import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import '../core/config/revenuecat_config.dart';
import 'subscription_provider.dart';

/// Wraps the RevenueCat SDK and exposes the app's subscription state.
///
/// Responsibilities:
///   * Configure the SDK with the public API key at startup.
///   * Mirror the RevenueCat user id to Firebase Auth (when signed in).
///   * Listen for `CustomerInfo` updates so entitlement changes (purchases,
///     renewals, expirations, restores) propagate to the app instantly.
///   * Expose the active "Pro" entitlement, offerings/packages and safe
///     purchase/restore methods with normalized error handling.
///
/// RevenueCat is the single source of truth for entitlement state — it drives
/// [SubscriptionProvider.setPro] so the existing free-tier gating (invoice /
/// client limits, PDF watermark) keeps working unchanged.
class RevenueCatProvider with ChangeNotifier {
  bool _isConfigured = false;
  bool _isConfiguring = false;
  bool _isLoadingOfferings = false;
  bool _isPurchasing = false;
  bool _isRestoring = false;
  String? _error;
  CustomerInfo? _customerInfo;
  Offerings? _offerings;
  SubscriptionProvider? _subscription;

  /// True once the SDK has been configured and the first customer info has
  /// been fetched. UI can use this to avoid flashing stale states.
  bool get isConfigured => _isConfigured;
  bool get isLoadingOfferings => _isLoadingOfferings;
  bool get isPurchasing => _isPurchasing;
  bool get isRestoring => _isRestoring;
  String? get error => _error;

  /// The latest customer info (or null before the first fetch).
  CustomerInfo? get customerInfo => _customerInfo;

  /// The active Pro entitlement, if any.
  EntitlementInfo? get proEntitlement =>
      _customerInfo?.entitlements.active[RevenueCatConfig.proEntitlementId];

  /// Whether the user currently has access to the Pro entitlement.
  bool get isPro => proEntitlement != null;

  /// Expiration of the active Pro entitlement (null for lifetime access).
  DateTime? get proExpirationDate => proEntitlement?.expirationDate != null
      ? DateTime.tryParse(proEntitlement!.expirationDate!)
      : null;

  /// Product identifier that unlocked Pro (e.g. for display).
  String? get proProductIdentifier => proEntitlement?.productIdentifier;

  Offerings? get offerings => _offerings;

  /// The current offering configured in the RevenueCat dashboard (used by the
  /// RevenueCatUI paywall).
  Offering? get currentOffering => _offerings?.current;

  RevenueCatProvider() {
    _configure();
  }

  /// Attaches the app-wide [SubscriptionProvider] so entitlement state flows
  /// into the existing Pro gating.
  ///
  /// Safe to call multiple times: if the same instance is re-attached (which
  /// happens on every [SubscriptionProvider] notification via the
  /// `ChangeNotifierProxyProvider`), it is a no-op. Without this guard, each
  /// [SubscriptionProvider.setPro] would re-trigger `_syncSubscription`, which
  /// calls `setPro` again → infinite notify loop.
  void attach(SubscriptionProvider sub) {
    if (identical(_subscription, sub)) return;
    _subscription = sub;
    _syncSubscription();
  }

  Future<void> _configure() async {
    if (_isConfiguring) return;
    _isConfiguring = true;
    try {
      await Purchases.configure(
        PurchasesConfiguration(RevenueCatConfig.apiKey),
      );
      debugPrint('[RevenueCat] SDK configured (key ${RevenueCatConfig.apiKey})');      // Re-sync the RevenueCat user to the Firebase Auth user (if any) so
      // purchases survive sign-in across devices. Anonymous users keep the
      // SDK-generated anonymous id, which is restored locally on relaunch.
      FirebaseAuth.instance.authStateChanges().listen((user) async {
        try {
          if (user != null) {
            await Purchases.logIn(user.uid);
          } else {
            await Purchases.logOut();
          }
        } catch (_) {
          // Auth re-sync is best-effort; entitlement state is still valid.
        }
        await refreshCustomerInfo();
      });
      Purchases.addCustomerInfoUpdateListener(_onCustomerInfoUpdate);
      _isConfigured = true;
      await Future.wait([refreshCustomerInfo(), loadOfferings()]);
    } on PlatformException catch (e) {
      _error = 'RevenueCat configuration failed: ${e.message}';
      _isConfigured = false;
      debugPrint('[RevenueCat] CONFIG ERROR (PlatformException): ${e.message}');
    } catch (e) {
      _error = 'RevenueCat configuration failed: $e';
      _isConfigured = false;
      debugPrint('[RevenueCat] CONFIG ERROR: $e');
    } finally {
      _isConfiguring = false;
      notifyListeners();
    }
  }

  void _onCustomerInfoUpdate(CustomerInfo customerInfo) {
    _customerInfo = customerInfo;
    _logEntitlements('customer info update');
    _syncSubscription();
    notifyListeners();
  }

  void _syncSubscription() {
    // Only override the app's Pro flag once we have server truth. This avoids
    // briefly revoking a stored entitlement before RevenueCat responds.
    final sub = _subscription;
    if (sub == null || _customerInfo == null) return;
    final serverPro = isPro;
    if (sub.isPro == serverPro) return;
    debugPrint('[RevenueCat] sync -> setPro($serverPro)');
    sub.setPro(serverPro);
  }

  /// Fetches the latest customer info from RevenueCat.
  Future<void> refreshCustomerInfo() async {
    try {
      _customerInfo = await Purchases.getCustomerInfo();
      _logEntitlements('refreshCustomerInfo');
      _syncSubscription();
      notifyListeners();
    } on PlatformException catch (e) {
      _setError(e);
    } catch (e) {
      _setError(e);
    }
  }

  /// Loads the configured offerings/packages from the RevenueCat dashboard.
  Future<void> loadOfferings() async {
    _isLoadingOfferings = true;
    notifyListeners();
    try {
      _offerings = await Purchases.getOfferings();
      final current = _offerings?.current;
      if (current == null) {
        _setError('No offerings configured in the RevenueCat dashboard.');
        debugPrint('[RevenueCat] loadOfferings -> NO CURRENT OFFERING');
      } else {
        debugPrint(
          '[RevenueCat] loadOfferings -> ${current.availablePackages.length} package(s): '
          '${current.availablePackages.map((p) => "${p.identifier}(${p.packageType})").join(", ")}',
        );
      }
    } on PlatformException catch (e) {
      _setError(e);
    } catch (e) {
      _setError(e);
    } finally {
      _isLoadingOfferings = false;
      notifyListeners();
    }
  }

  /// Looks up a package by identifier from the current offering, with a
  /// fallback to the RevenueCat typed packages (lifetime / annual / monthly).
  Package? packageById(String identifier) {
    final offering = _offerings?.current;
    if (offering == null) return null;
    return offering.getPackage(identifier) ??
        switch (identifier) {
          RevenueCatConfig.packageLifetime => offering.lifetime,
          RevenueCatConfig.packageYearly => offering.annual,
          RevenueCatConfig.packageMonthly => offering.monthly,
          _ => null,
        };
  }

  /// Purchases a package. Returns `true` on success, `false` otherwise.
  /// A user-cancelled purchase is NOT treated as an error.
  Future<bool> purchasePackage(Package package) async {
    if (_isPurchasing) {
      debugPrint('[RevenueCat] purchase ignored: already in progress');
      return false;
    }
    _isPurchasing = true;
    _error = null;
    notifyListeners();
    debugPrint(
        '[RevenueCat] PURCHASE START: ${package.identifier} (${package.storeProduct.priceString})');
    try {
      final result = await Purchases.purchase(PurchaseParams.package(package));
      _customerInfo = result.customerInfo;
      _logEntitlements('purchase result');
      _syncSubscription();
      // A completed store transaction means the user now owns Pro. Flip the
      // app flag immediately — the RevenueCat entitlement webhook may still
      // be in flight (especially in sandbox/test stores).
      await _subscription?.setPro(true);
      debugPrint(
          '[RevenueCat] PURCHASE SUCCESS ✓  isPro(server)=$isPro  entitlement=${_activeEntitlementIds()}');
      return true;
    } on PlatformException catch (e) {
      if (PurchasesErrorHelper.getErrorCode(e) ==
          PurchasesErrorCode.purchaseCancelledError) {
        _error = null;
        debugPrint('[RevenueCat] purchase CANCELLED by user');
      } else {
        _setError(e);
        debugPrint('[RevenueCat] PURCHASE ERROR (PlatformException): '
            '${PurchasesErrorHelper.getErrorCode(e).name} - ${e.message}');
      }
      return false;
    } catch (e) {
      _setError(e);
      debugPrint('[RevenueCat] PURCHASE ERROR: $e');
      return false;
    } finally {
      _isPurchasing = false;
      notifyListeners();
    }
  }

  /// Restores prior purchases. Returns `true` if any entitlement was found.
  Future<bool> restorePurchases() async {
    if (_isRestoring) return false;
    _isRestoring = true;
    _error = null;
    notifyListeners();
    debugPrint('[RevenueCat] RESTORE START');
    try {
      final info = await Purchases.restorePurchases();
      _customerInfo = info;
      _logEntitlements('restore result');
      _syncSubscription();
      debugPrint('[RevenueCat] RESTORE DONE -> isPro=$isPro');
      return isPro;
    } on PlatformException catch (e) {
      _setError(e);
      debugPrint('[RevenueCat] RESTORE ERROR (PlatformException): '
          '${PurchasesErrorHelper.getErrorCode(e).name} - ${e.message}');
      return false;
    } catch (e) {
      _setError(e);
      debugPrint('[RevenueCat] RESTORE ERROR: $e');
      return false;
    } finally {
      _isRestoring = false;
      notifyListeners();
    }
  }

  void _setError(Object e) {
    _error = e is PlatformException
        ? PurchasesErrorHelper.getErrorCode(e).name
        : e.toString();
    debugPrint('[RevenueCat] ERROR -> $_error');
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }

  // ─── Debug helpers ────────────────────────────────────────────────────

  void _logEntitlements(String source) {
    final active = _customerInfo?.entitlements.active.keys.toList() ?? [];
    final all = _customerInfo?.entitlements.all.keys.toList() ?? [];
    debugPrint(
        '[RevenueCat] $source -> active entitlements: $active | all: $all');
  }

  String _activeEntitlementIds() {
    return (_customerInfo?.entitlements.active.keys.toList() ?? []).join(', ');
  }
}
