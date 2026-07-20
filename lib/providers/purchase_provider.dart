import 'dart:async';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'subscription_provider.dart';

/// Product IDs configured in App Store Connect (iOS) and Google Play (Android).
/// These MUST match the IDs you create in each store console.
const String _proMonthlyId = 'invoiceflow_pro_monthly';
const String _proYearlyId = 'invoiceflow_pro_yearly';

class PurchaseProvider with ChangeNotifier {
  final InAppPurchase _iap = InAppPurchase.instance;

  bool _available = false;
  bool _isStoreLoading = false;
  bool _isPurchasing = false;
  String? _error;
  ProductDetails? _monthly;
  ProductDetails? _yearly;
  late StreamSubscription<List<PurchaseDetails>> _sub;

  bool get available => _available;
  bool get isStoreLoading => _isStoreLoading;
  bool get isPurchasing => _isPurchasing;
  String? get error => _error;
  ProductDetails? get monthly => _monthly;
  ProductDetails? get yearly => _yearly;

  SubscriptionProvider? _subProvider;

  PurchaseProvider() {
    _init();
  }

  /// Link to the app-wide SubscriptionProvider so purchases unlock Pro
  /// on the same instance the UI is listening to.
  void linkSubscription(SubscriptionProvider sub) => _subProvider = sub;

  Future<void> _init() async {
    _available = await _iap.isAvailable();
    if (!_available) {
      notifyListeners();
      return;
    }

    _sub = _iap.purchaseStream.listen(
      _onPurchaseUpdate,
      onDone: () => _sub.cancel(),
      onError: (e) {
        _error = e.toString();
        notifyListeners();
      },
    );

    await _loadProducts();
  }

  Future<void> _loadProducts() async {
    _isStoreLoading = true;
    notifyListeners();
    try {
      final resp = await _iap.queryProductDetails({
        _proMonthlyId,
        _proYearlyId,
      });
      for (final p in resp.productDetails) {
        if (p.id == _proMonthlyId) _monthly = p;
        if (p.id == _proYearlyId) _yearly = p;
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isStoreLoading = false;
      notifyListeners();
    }
  }

  Future<void> buy(ProductDetails product) async {
    if (!_available) return;
    _isPurchasing = true;
    _error = null;
    notifyListeners();

    final param = PurchaseParam(productDetails: product);
    try {
      // Non-consumable / subscription purchase.
      await _iap.buyNonConsumable(purchaseParam: param);
    } catch (e) {
      _error = e.toString();
      _isPurchasing = false;
      notifyListeners();
    }
  }

  Future<void> restore() async {
    if (!_available) return;
    _isStoreLoading = true;
    notifyListeners();
    try {
      await _iap.restorePurchases();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isStoreLoading = false;
      notifyListeners();
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased ||
          purchase.status == PurchaseStatus.restored) {
        // Verify + unlock. In production, validate the receipt/server-side.
        _completePurchase(purchase);
        // Unlock Pro on the linked provider instance.
        _subProvider?.setPro(true);
      } else if (purchase.status == PurchaseStatus.error) {
        _error = purchase.error?.message;
      }
    }
    _isPurchasing = false;
    notifyListeners();
  }

  void _completePurchase(PurchaseDetails purchase) {
    if (purchase.pendingCompletePurchase) {
      _iap.completePurchase(purchase);
    }
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
