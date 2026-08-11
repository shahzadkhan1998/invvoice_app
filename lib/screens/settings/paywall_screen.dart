import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/revenuecat_provider.dart';
import '../../providers/subscription_provider.dart';

/// Custom premium / paywall screen.
///
/// Fully designed in-app (no native RevenueCatUI). Prices and packages are
/// still driven by the RevenueCat offerings so purchases work against the
/// configured test/production store products. The native paywall only showed
/// RevenueCat's default UI — this screen lets the app own the look and feel.
///
/// Behaviour:
///   * Already-Pro users never see the purchase options — they get a "You're
///     Pro" confirmation instead.
///   * A successful store transaction flips the Pro flag immediately and shows
///     a success dialog so the user always knows the purchase went through.
class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key});

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen> {
  String? _selectedIdentifier;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final rc = context.watch<RevenueCatProvider>();
    final sub = context.watch<SubscriptionProvider>();
    final isPro = sub.isPro;

    final offering = rc.currentOffering;
    final plans = (offering != null && offering.availablePackages.isNotEmpty)
        ? _buildPlans(offering, l10n)
        : null;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _TopBar(
              onClose: () {
                if (mounted && Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
            ),
            Expanded(
              child: isPro
                  ? _AlreadyProContent(l10n: l10n)
                  : plans == null
                      ? _buildLoadingOrError(l10n, rc)
                      : _buildContent(l10n, plans),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          (isPro || plans == null) ? null : _buildBottomBar(l10n, rc, plans),
    );
  }

  // ─── State helpers ────────────────────────────────────────────────────

  List<_PlanOption> _buildPlans(Offering offering, AppLocalizations l10n) {
    final plans = <_PlanOption>[];
    for (final package in offering.availablePackages) {
      final product = package.storeProduct;
      switch (package.packageType) {
        case PackageType.monthly:
          plans.add(_PlanOption(
            package: package,
            title: l10n.paywallMonthly,
            subtitle: l10n.paywallMonthlySub,
            price: product.priceString,
          ));
        case PackageType.annual:
          plans.add(_PlanOption(
            package: package,
            title: l10n.paywallYearly,
            subtitle: l10n.paywallYearlySub,
            price: product.priceString,
            perMonth: product.pricePerMonthString != null
                ? '${product.pricePerMonthString}${l10n.paywallPerMonth}'
                : null,
            isBestValue: true,
          ));
        case PackageType.lifetime:
          plans.add(_PlanOption(
            package: package,
            title: l10n.paywallLifetime,
            subtitle: l10n.paywallLifetimeSub,
            price: product.priceString,
          ));
        default:
          plans.add(_PlanOption(
            package: package,
            title: package.identifier,
            subtitle: product.subscriptionPeriod ?? '',
            price: product.priceString,
            perMonth: product.pricePerMonthString != null
                ? '${product.pricePerMonthString}${l10n.paywallPerMonth}'
                : null,
          ));
      }
    }
    return plans;
  }

  int _selectedIndex(List<_PlanOption> plans) {
    if (_selectedIdentifier != null) {
      final i = plans.indexWhere(
          (p) => p.package.identifier == _selectedIdentifier);
      if (i >= 0) return i;
    }
    final annual = plans.indexWhere(
        (p) => p.package.packageType == PackageType.annual);
    return annual >= 0 ? annual : 0;
  }

  _PlanOption? _selectedPlan(List<_PlanOption> plans) {
    final i = _selectedIndex(plans);
    if (i < 0 || i >= plans.length) return null;
    return plans[i];
  }

  Future<void> _purchase() async {
    final rc = context.read<RevenueCatProvider>();
    final sub = context.read<SubscriptionProvider>();
    final offering = rc.currentOffering;
    if (offering == null) return;
    final l10n = AppLocalizations.of(context)!;
    final plan = _selectedPlan(_buildPlans(offering, l10n));
    if (plan == null) return;

    debugPrint('[Paywall] purchasing ${plan.package.identifier}');
    final ok = await rc.purchasePackage(plan.package);
    debugPrint('[Paywall] purchasePackage returned: $ok | isPro=${sub.isPro} | '
        'rc.error=${rc.error ?? "none"}');
    if (!ok) {
      if (mounted && rc.error != null) {
        _showSnack(l10n.purchaseErrorGeneric, color: AppColors.dangerRed);
      }
      return;
    }

    // The store transaction completed. Make sure the app treats the user as
    // Pro right away (the provider also does this, but keep it explicit so the
    // success dialog + "You're Pro" state show even if the flag races).
    await sub.setPro(true);
    debugPrint('[Paywall] Pro set, isPro=${sub.isPro} — showing success dialog');
    if (!mounted) return;
    await _showSuccessDialog(l10n);
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _showSuccessDialog(AppLocalizations l10n) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        icon: Container(
          width: 76,
          height: 76,
          decoration: BoxDecoration(
            color: AppColors.successGreen.withValues(alpha: 0.12),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check_rounded,
            color: AppColors.successGreen,
            size: 44,
          ),
        ),
        title: Text(l10n.purchaseSuccessTitle, textAlign: TextAlign.center),
        content: Text(
          l10n.purchaseSuccessSubtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(height: 1.5),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: FilledButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(l10n.purchaseSuccessContinue),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _restore() async {
    final rc = context.read<RevenueCatProvider>();
    final l10n = AppLocalizations.of(context)!;
    final ok = await rc.restorePurchases();
    if (mounted) {
      _showSnack(
        ok ? l10n.purchaseRestored : l10n.purchaseErrorGeneric,
        color: ok ? null : AppColors.dangerRed,
      );
    }
  }

  // ─── Body sections ────────────────────────────────────────────────────

  Widget _buildLoadingOrError(AppLocalizations l10n, RevenueCatProvider rc) {
    if (rc.isLoadingOfferings || !rc.isConfigured) {
      return const Center(child: CircularProgressIndicator());
    }
    final offering = rc.currentOffering;
    if (offering != null && offering.availablePackages.isEmpty) {
      return _ErrorState(
        message: l10n.paywallNoOffering,
        onRetry: () => rc.loadOfferings(),
      );
    }
    return _ErrorState(
      message: l10n.paywallLoadError,
      onRetry: () => rc.loadOfferings(),
    );
  }

  Widget _buildContent(AppLocalizations l10n, List<_PlanOption> plans) {
    final selectedIndex = _selectedIndex(plans);

    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
      children: [
        _HeroCard(l10n: l10n),
        const SizedBox(height: 28),
        Text(
          l10n.paywallChoosePlan,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 14),
        for (var i = 0; i < plans.length; i++) ...[
          _PlanCard(
            option: plans[i],
            selected: i == selectedIndex,
            onTap: () => setState(
              () => _selectedIdentifier = plans[i].package.identifier,
            ),
          ),
          if (i != plans.length - 1) const SizedBox(height: 12),
        ],
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildBottomBar(
    AppLocalizations l10n,
    RevenueCatProvider rc,
    List<_PlanOption> plans,
  ) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final busy = rc.isPurchasing || rc.isRestoring;

    return Container(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 16),
      decoration: BoxDecoration(
        color:
            isDark ? AppColors.darkBackground : AppColors.lightBackground,
        border: Border(top: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            height: 56,
            child: FilledButton(
              onPressed: busy ? null : _purchase,
              child: rc.isPurchasing
                  ? const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.4,
                        color: Colors.white,
                      ),
                    )
                  : Text(l10n.paywallSubscribe),
            ),
          ),
          const SizedBox(height: 4),
          TextButton.icon(
            onPressed: busy ? null : _restore,
            icon: const Icon(Icons.restore_rounded, size: 18),
            label: Text(l10n.paywallRestore),
          ),
          const SizedBox(height: 2),
          Text(
            l10n.paywallTerms,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11.5,
              height: 1.4,
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
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

// ─── Plan model ─────────────────────────────────────────────────────────

class _PlanOption {
  const _PlanOption({
    required this.package,
    required this.title,
    required this.subtitle,
    required this.price,
    this.perMonth,
    this.isBestValue = false,
  });

  final Package package;
  final String title;
  final String subtitle;
  final String price;
  final String? perMonth;
  final bool isBestValue;
}

// ─── Top bar ────────────────────────────────────────────────────────────

class _TopBar extends StatelessWidget {
  final VoidCallback onClose;

  const _TopBar({required this.onClose});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        children: [
          IconButton(
            onPressed: onClose,
            icon: const Icon(Icons.close_rounded),
            tooltip: 'Close',
          ),
          const Spacer(),
          Icon(Icons.workspace_premium_rounded,
              color: scheme.primary, size: 24),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

// ─── Hero card ──────────────────────────────────────────────────────────

class _HeroCard extends StatelessWidget {
  final AppLocalizations l10n;

  const _HeroCard({required this.l10n});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accent =
        Color.lerp(scheme.primary, Colors.black, isDark ? 0.35 : 0.18)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [scheme.primary, accent],
        ),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.28),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.22),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'PRO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(Icons.auto_awesome_rounded,
                  color: Colors.white, size: 26),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            l10n.paywallTitle,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.paywallSubtitle,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                _FeatureRow(
                  icon: Icons.all_inclusive_rounded,
                  label: l10n.paywallFeatureUnlimited,
                ),
                const SizedBox(height: 10),
                _FeatureRow(
                  icon: Icons.cloud_sync_outlined,
                  label: l10n.paywallFeatureSync,
                ),
                const SizedBox(height: 10),
                _FeatureRow(
                  icon: Icons.water_drop_outlined,
                  label: l10n.paywallFeatureNoWatermark,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FeatureRow({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.white),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

// ─── Plan card ──────────────────────────────────────────────────────────

class _PlanCard extends StatelessWidget {
  final _PlanOption option;
  final bool selected;
  final VoidCallback onTap;

  const _PlanCard({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          decoration: BoxDecoration(
            color: selected
                ? scheme.primary.withValues(alpha: isDark ? 0.14 : 0.06)
                : scheme.surface,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color:
                  selected ? scheme.primary : scheme.outlineVariant,
              width: selected ? 1.6 : 1,
            ),
          ),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected ? scheme.primary : Colors.transparent,
                  border: Border.all(
                    color:
                        selected ? scheme.primary : scheme.onSurfaceVariant,
                    width: selected ? 0 : 1.8,
                  ),
                ),
                child: selected
                    ? const Icon(Icons.check_rounded,
                        size: 16, color: Colors.white)
                    : null,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          option.title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if (option.isBestValue) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: scheme.primary.withValues(alpha: 0.14),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!
                                  .paywallBestValue,
                              style: TextStyle(
                                fontSize: 10.5,
                                fontWeight: FontWeight.w700,
                                color: scheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 3),
                    Text(
                      option.subtitle,
                      style: TextStyle(
                        fontSize: 12.5,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    option.price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  if (option.perMonth != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      option.perMonth!,
                      style: TextStyle(
                        fontSize: 12,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Already-Pro state ──────────────────────────────────────────────────
//
// Shown instead of the purchase options whenever the user already has Pro
// unlocked, so a premium user never sees a paywall again.

class _AlreadyProContent extends StatelessWidget {
  final AppLocalizations l10n;

  const _AlreadyProContent({required this.l10n});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: scheme.primary.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.workspace_premium_rounded,
                color: scheme.primary,
                size: 46,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              l10n.purchaseSuccessTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.settingsProActive,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: scheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: FilledButton(
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  }
                },
                child: Text(l10n.commonContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Error / empty state ────────────────────────────────────────────────

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
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
