import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/purchase_provider.dart';
import '../../providers/subscription_provider.dart';
import '../../core/theme/app_colors.dart';
import 'purchase_success_screen.dart';

class PaywallScreen extends StatefulWidget {
  const PaywallScreen({Key? key}) : super(key: key);

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen> {
  bool _navigated = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final purchase = context.watch<PurchaseProvider>();
    final sub = context.watch<SubscriptionProvider>();

    // Navigate to the success screen once Pro is unlocked.
    if (sub.isPro && !_navigated && mounted) {
      _navigated = true;
      Future.microtask(() {
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (_) => const PurchaseSuccessScreen()),
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
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Lottie.asset(
                  'assets/animations/success.json',
                  height: 140,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.paywallTitle,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.paywallSubtitle,
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                _FeatureTile(
                  icon: Icons.receipt_long_outlined,
                  text: l10n.paywallFeatureUnlimited,
                ),
                _FeatureTile(
                  icon: Icons.cloud_sync_outlined,
                  text: l10n.paywallFeatureSync,
                ),
                _FeatureTile(
                  icon: Icons.check_circle_outline,
                  text: l10n.paywallFeatureNoWatermark,
                ),
                const SizedBox(height: 24),
                if (purchase.error != null)
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: AppColors.dangerRed.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      purchase.error!,
                      style: const TextStyle(
                          color: AppColors.dangerRed, fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                _PlanCard(
                  title: purchase.monthly?.title ?? l10n.paywallMonthly,
                  price: purchase.monthly?.price ?? '\$4.99',
                  subtitle: l10n.paywallMonthlySub,
                  isPopular: true,
                  onTap: purchase.isPurchasing
                      ? null
                      : () {
                          if (purchase.monthly != null) {
                            purchase.linkSubscription(sub);
                            purchase.buy(purchase.monthly!);
                          }
                        },
                ),
                const SizedBox(height: 12),
                _PlanCard(
                  title: purchase.yearly?.title ?? l10n.paywallYearly,
                  price: purchase.yearly?.price ?? '\$39.99',
                  subtitle: l10n.paywallYearlySub,
                  isPopular: false,
                  onTap: purchase.isPurchasing
                      ? null
                      : () {
                          if (purchase.yearly != null) {
                            purchase.linkSubscription(sub);
                            purchase.buy(purchase.yearly!);
                          }
                        },
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: purchase.isStoreLoading
                      ? null
                      : () {
                          purchase.linkSubscription(sub);
                          purchase.restore();
                        },
                  child: Text(l10n.paywallRestore),
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.paywallTerms,
                  style: TextStyle(
                      fontSize: 11, color: Theme.of(context).hintColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          if (purchase.isPurchasing || purchase.isStoreLoading)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  final IconData icon;
  final String text;
  const _FeatureTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Theme.of(context).colorScheme.primary, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(text,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final bool isPopular;
  final VoidCallback? onTap;

  const _PlanCard({
    required this.title,
    required this.price,
    required this.subtitle,
    required this.isPopular,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: isPopular ? Theme.of(context).colorScheme.primary : Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(16),
          border: isPopular
              ? null
              : Border.all(color: Theme.of(context).dividerColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isPopular ? Colors.white : null,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: isPopular
                          ? Colors.white70
                          : Theme.of(context).hintColor,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isPopular ? Colors.white : Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
