import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../providers/invoice_provider.dart';
import '../../providers/auth_provider.dart';
import '../../models/invoice.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/currency_utils.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/app_section_header.dart';
import '../../widgets/app_empty_state.dart';
import '../../widgets/staggered_entrance.dart';
import '../invoices/create_invoice_screen.dart';
import '../invoices/invoice_detail_screen.dart';
import '../../widgets/invoice_status_badge.dart';

class DashboardScreen extends StatelessWidget {
  final VoidCallback? onSeeAllInvoices;

  const DashboardScreen({Key? key, this.onSeeAllInvoices}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    final invoiceProvider = context.watch<InvoiceProvider>();
    final name = auth.currentUser?.displayName?.split(' ').first ?? 'there';
    final l10n = AppLocalizations.of(context)!;

    return FutureBuilder<String>(
      future: _resolveDefaultCurrency(),
      initialData: invoiceProvider.invoices.isNotEmpty
          ? invoiceProvider.invoices.first.currency
          : 'USD',
      builder: (context, snapshot) {
        final currency = invoiceProvider.invoices.isNotEmpty
            ? invoiceProvider.invoices.first.currency
            : (snapshot.data ??
                CurrencyUtils.currencyForLocale(
                    PlatformDispatcher.instance.locale));

        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            bottom: false,
            child: RefreshIndicator(
              onRefresh: () => invoiceProvider.loadInvoices(),
              color: Theme.of(context).colorScheme.primary,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: _DashboardHeader(
                      name: name,
                      onNotifications: () =>
                          _openNotifications(context, invoiceProvider),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        const SizedBox(height: 8),
                        StaggeredEntrance(
                          index: 0,
                          child: _BalanceHero(
                            currency: currency,
                            outstanding: invoiceProvider.totalOutstanding,
                            pendingCount: invoiceProvider.pendingInvoices.length,
                            overdueCount: invoiceProvider.overdueInvoices.length,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: StaggeredEntrance(
                                index: 1,
                                child: _StatCard(
                                  label: l10n.dashboardThisMonth,
                                  amount: invoiceProvider.thisMonthTotal,
                                  currency: currency,
                                  color: AppColors.successGreen,
                                  icon: Icons.trending_up_rounded,
                                  caption: l10n.dashboardPaidCount(
                                    invoiceProvider.paidInvoices.length
                                        .toString(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: StaggeredEntrance(
                                index: 2,
                                child: _StatCard(
                                  label: l10n.dashboardOverdue,
                                  amount: invoiceProvider.totalOverdue,
                                  currency: currency,
                                  color: AppColors.dangerRed,
                                  icon: Icons.warning_amber_rounded,
                                  caption: l10n.dashboardDaysOverdue(
                                    invoiceProvider.overdueInvoices.length
                                        .toString(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        StaggeredEntrance(
                          index: 3,
                          child: AppSectionHeader(
                            title: l10n.dashboardRecentInvoices,
                            actionLabel: l10n.dashboardSeeAll,
                            onAction: onSeeAllInvoices,
                          ),
                        ),
                        const SizedBox(height: 12),

                        if (invoiceProvider.isLoading)
                          const Padding(
                            padding: EdgeInsets.all(32),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        else if (invoiceProvider.invoices.isEmpty)
                          AppEmptyState(
                            icon: Icons.receipt_long_outlined,
                            title: l10n.dashboardNoInvoicesYet,
                            subtitle: l10n.dashboardNoInvoicesSubtitle,
                            actionLabel: l10n.dashboardCreateInvoice,
                            onAction: () => _openCreateInvoice(context),
                          )
                        else
                          ...invoiceProvider.invoices.take(5).map(
                                (invoice) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: _InvoiceCard(
                                    invoice: invoice,
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => InvoiceDetailScreen(
                                            invoice: invoice),
                                      ),
                                    ),
                                    onMarkPaid: () => context
                                        .read<InvoiceProvider>()
                                        .markAsPaid(invoice.id),
                                  ),
                                ),
                              ),

                        const SizedBox(height: 100),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () => _openCreateInvoice(context),
            icon: const Icon(Icons.add_rounded),
            label: Text(
              l10n.dashboardNewInvoice,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        );
      },
    );
  }

  Future<String> _resolveDefaultCurrency() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(CurrencyUtils.defaultCurrencyKey) ??
        CurrencyUtils.currencyForLocale(PlatformDispatcher.instance.locale);
  }

  void _openCreateInvoice(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const CreateInvoiceScreen()),
    );
  }

  void _openNotifications(
      BuildContext context, InvoiceProvider provider) {
    final l10n = AppLocalizations.of(context)!;
    final overdue = provider.overdueInvoices.length;
    final pending = provider.pendingInvoices.length;

    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => Padding(
        padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.dashboardNotifications,
                style: Theme.of(ctx).textTheme.titleLarge),
            const SizedBox(height: 16),
            _NotificationRow(
              icon: Icons.warning_amber_rounded,
              color: AppColors.dangerRed,
              title: l10n.dashboardOverdue,
              value: overdue,
            ),
            const SizedBox(height: 8),
            _NotificationRow(
              icon: Icons.schedule_rounded,
              color: AppColors.warningAmber,
              title: l10n.statusPending,
              value: pending,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.dashboardNotificationsHint,
              style: Theme.of(ctx).textTheme.bodySmall?.copyWith(
                    color: Theme.of(ctx).colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardHeader extends StatelessWidget {
  final String name;
  final VoidCallback onNotifications;

  const _DashboardHeader({
    required this.name,
    required this.onNotifications,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final greeting = _greeting(context, l10n);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
      child: Row(
        children: [
          AppAvatar(
            initials: _initials(name == 'there' ? 'InvoiceFlow' : name),
            size: 46,
            radius: 15,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greeting,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  '$name 👋',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: scheme.surface,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: scheme.outlineVariant),
            ),
            child: IconButton(
              onPressed: onNotifications,
              icon: Icon(Icons.notifications_none_rounded,
                  color: scheme.onSurface),
              tooltip: l10n.dashboardNotifications,
            ),
          ),
        ],
      ),
    );
  }

  String _initials(String value) {
    final parts = value.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return value.isNotEmpty ? value[0].toUpperCase() : '?';
  }

  String _greeting(BuildContext context, AppLocalizations l10n) {
    final hour = DateTime.now().hour;
    if (hour < 12) return l10n.dashboardGreetingMorning;
    if (hour < 17) return l10n.dashboardGreetingAfternoon;
    return l10n.dashboardGreetingEvening;
  }
}

class _BalanceHero extends StatelessWidget {
  final String currency;
  final double outstanding;
  final int pendingCount;
  final int overdueCount;

  const _BalanceHero({
    required this.currency,
    required this.outstanding,
    required this.pendingCount,
    required this.overdueCount,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            scheme.primary,
            Color.lerp(scheme.primary, Colors.black, isDark ? 0.28 : 0.14)!,
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.35),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            // Decorative circles
            Positioned(
              right: -40,
              top: -60,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: -70,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.06),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.dashboardOutstanding,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.16),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.account_balance_wallet_rounded,
                                color: Colors.white, size: 14),
                            const SizedBox(width: 5),
                            Text(
                              currency,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Text(
                    '${_formatAmount(outstanding)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _HeroChip(
                        icon: Icons.schedule_rounded,
                        color: AppColors.warningAmber,
                        label: '$pendingCount ${l10n.statusPending}',
                      ),
                      const SizedBox(width: 8),
                      if (overdueCount > 0)
                        _HeroChip(
                          icon: Icons.warning_amber_rounded,
                          color: AppColors.dangerRed,
                          label: '$overdueCount ${l10n.dashboardOverdue}',
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatAmount(double value) {
    final isWhole = value == value.roundToDouble();
    return isWhole ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  }
}

class _HeroChip extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _HeroChip({
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 13),
          const SizedBox(width: 5),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final double amount;
  final String currency;
  final Color color;
  final IconData icon;
  final String caption;

  const _StatCard({
    required this.label,
    required this.amount,
    required this.currency,
    required this.color,
    required this.icon,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: color, size: 18),
              ),
              const Spacer(),
              Icon(Icons.arrow_upward_rounded,
                  size: 12, color: scheme.onSurfaceVariant),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 2),
          Text(
            '$currency ${_formatAmount(amount)}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  color: color,
                ),
          ),
          const SizedBox(height: 6),
          Text(
            caption,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                  color: scheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }

  String _formatAmount(double value) {
    final isWhole = value == value.roundToDouble();
    return isWhole ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  }
}

class _InvoiceCard extends StatelessWidget {
  final Invoice invoice;
  final VoidCallback onTap;
  final VoidCallback onMarkPaid;

  const _InvoiceCard({
    required this.invoice,
    required this.onTap,
    required this.onMarkPaid,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Dismissible(
      key: Key(invoice.id),
      background: _SwipeBackground(
        color: AppColors.successGreen,
        icon: Icons.check_circle_outline,
        label: l10n.dashboardMarkPaid,
        align: Alignment.centerLeft,
      ),
      secondaryBackground: _SwipeBackground(
        color: AppColors.dangerRed,
        icon: Icons.delete_outline,
        label: l10n.commonDelete,
        align: Alignment.centerRight,
      ),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          if (invoice.status != InvoiceStatus.paid) {
            onMarkPaid();
          }
          return false;
        }
        return await _confirmDelete(context);
      },
      onDismissed: (_) {
        context.read<InvoiceProvider>().deleteInvoice(invoice.id);
      },
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: scheme.surface,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: scheme.outlineVariant),
          ),
          child: Row(
            children: [
              AppAvatar(
                initials: invoice.clientName.isNotEmpty
                    ? invoice.clientName[0]
                    : '?',
                size: 46,
                radius: 14,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          invoice.invoiceNumber,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: scheme.onSurfaceVariant,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          '${invoice.currency} ${_formatAmount(invoice.total)}',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          invoice.clientName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        InvoiceStatusBadge(status: invoice.status),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.schedule_rounded,
                            size: 12, color: scheme.onSurfaceVariant),
                        const SizedBox(width: 4),
                        Text(
                          '${l10n.dashboardDuePrefix}${_formatDate(invoice.dueDate)}',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: scheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Icon(Icons.chevron_right_rounded,
                  color: scheme.onSurfaceVariant, size: 20),
            ],
          ),
        ),
      ),
    );
  }

  String _formatAmount(double value) {
    final isWhole = value == value.roundToDouble();
    return isWhole ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  }

  Future<bool> _confirmDelete(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    return await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(l10n.deleteInvoiceTitle),
            content: Text(l10n.deleteInvoiceMessage(invoice.invoiceNumber)),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(l10n.commonCancel),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.dangerRed,
                  minimumSize: const Size(80, 40),
                ),
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(l10n.commonDelete),
              ),
            ],
          ),
        ) ??
        false;
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return '${date.day} ${months[date.month - 1]}';
  }
}

class _SwipeBackground extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final Alignment align;

  const _SwipeBackground({
    required this.color,
    required this.icon,
    required this.label,
    required this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      alignment: align,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationRow extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final int value;

  const _NotificationRow({
    required this.icon,
    required this.color,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          AppIconAvatar(icon: icon, color: color, size: 40, radius: 12),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Text(
            '$value',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
