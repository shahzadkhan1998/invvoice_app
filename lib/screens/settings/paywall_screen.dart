import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart' as rcui;
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/revenuecat_provider.dart';
import '../../providers/subscription_provider.dart';
import '../../core/theme/app_colors.dart';
import 'purchase_success_screen.dart';

/// Paywall screen backed by the RevenueCatUI native paywall.
///
/// The paywall layout, copy and products are configured remotely in the
/// RevenueCat dashboard — no app release required to update prices or copy.
class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key});

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen> {
  bool _navigated = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final rc = context.watch<RevenueCatProvider>();
    final sub = context.watch<SubscriptionProvider>();

    // Navigate to the success screen once Pro is unlocked.
    if (sub.isPro && !_navigated && mounted) {
      _navigated = true;
      Future.microtask(() {
        if (context.mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const PurchaseSuccessScreen()),
          );
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsUpgradePro),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _buildBody(l10n, rc),
    );
  }

  Widget _buildBody(AppLocalizations l10n, RevenueCatProvider rc) {
    if (rc.isLoadingOfferings || !rc.isConfigured) {
      return const Center(child: CircularProgressIndicator());
    }

    final offering = rc.currentOffering;
    if (offering == null || offering.availablePackages.isEmpty) {
      return _ErrorState(
        message: l10n.paywallLoadError,
        onRetry: () => rc.loadOfferings(),
      );
    }

    return rcui.PaywallView(
      offering: offering,
      displayCloseButton: false,
      onPurchaseStarted: (_) => rc.clearError(),
      onPurchaseCompleted: (customerInfo, _) {
        // The customer-info listener already flipped Pro on; navigate to the
        // success screen once the native paywall finishes its animation.
        Future.delayed(const Duration(milliseconds: 1200), () {
          if (mounted && !_navigated) {
            _navigated = true;
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const PurchaseSuccessScreen()),
            );
          }
        });
      },
      onPurchaseCancelled: () {},
      onPurchaseError: (error) => _showSnack(
        l10n.purchaseErrorGeneric,
        color: AppColors.dangerRed,
      ),
      onRestoreCompleted: (info) {
        _showSnack(
          l10n.purchaseRestored,
          color: Theme.of(context).colorScheme.primary,
        );
      },
      onRestoreError: (error) => _showSnack(
        l10n.purchaseErrorGeneric,
        color: AppColors.dangerRed,
      ),
      onDismiss: () {
        if (mounted && Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      },
    );
  }

  void _showSnack(String message, {Color? color}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: color,
        ),
      );
  }
}

class _ErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorState({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.cloud_off_outlined,
                size: 56, color: scheme.onSurfaceVariant),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(color: scheme.onSurfaceVariant),
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
