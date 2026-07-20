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
import '../invoices/create_invoice_screen.dart';
import '../invoices/invoice_detail_screen.dart';
import '../../widgets/invoice_status_badge.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

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
        final defaultCurrency = invoiceProvider.invoices.isNotEmpty
            ? invoiceProvider.invoices.first.currency
            : (snapshot.data ??
                CurrencyUtils.currencyForLocale(
                    PlatformDispatcher.instance.locale));

        return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => invoiceProvider.loadInvoices(),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                backgroundColor:
                    Theme.of(context).scaffoldBackgroundColor,
                elevation: 0,
                title: Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.receipt_long_rounded,
                          color: Colors.white, size: 20),
                    ),
                    const SizedBox(width: 10),
                    Text(l10n.appTitle,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 4),
                ],
              ),

              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const SizedBox(height: 8),

                    Text(
                      '${_greeting(context)}, $name! 👋',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      l10n.dashboardSubtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6),
                      ),
                    ),
                    const SizedBox(height: 24),

                    Row(
                      children: [
                        Expanded(
                          child: _StatCard(
                            label: l10n.dashboardOutstanding,
                            amount: invoiceProvider.totalOutstanding,
                            currency: 'AED',
                            color: Theme.of(context).colorScheme.primary,
                            icon: Icons.account_balance_wallet_outlined,
                            count: invoiceProvider.pendingInvoices.length,
                            countLabel: l10n.dashboardInvoices,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _StatCard(
                            label: l10n.dashboardOverdue,
                            amount: invoiceProvider.totalOverdue,
                            currency: 'AED',
                            color: AppColors.dangerRed,
                            icon: Icons.warning_amber_rounded,
                            count: invoiceProvider.overdueInvoices.length,
                            countLabel: l10n.dashboardInvoices,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.successGreen.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: AppColors.successGreen.withOpacity(0.3)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.successGreen,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.trending_up,
                                color: Colors.white, size: 22),
                          ),
                          const SizedBox(width: 14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                l10n.dashboardThisMonth,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'AED ${invoiceProvider.thisMonthTotal.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.successGreen,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            l10n.dashboardPaidCount(invoiceProvider.paidInvoices.length.toString()),
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.successGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.dashboardRecentInvoices,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(l10n.dashboardSeeAll),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    if (invoiceProvider.isLoading)
                      const Center(child: CircularProgressIndicator())
                    else if (invoiceProvider.invoices.isEmpty)
                      _EmptyState(
                        onCreateInvoice: () => _openCreateInvoice(context),
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
                                    builder: (_) =>
                                        InvoiceDetailScreen(invoice: invoice),
                                  ),
                                ),
                                onMarkPaid: () => context
                                    .read<InvoiceProvider>()
                                    .markAsPaid(invoice.id),
                              ),
                            ),
                          ),

                    const SizedBox(height: 80),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openCreateInvoice(context),
        icon: const Icon(Icons.add),
        label: Text(
          l10n.dashboardNewInvoice,
          style: const TextStyle(fontWeight: FontWeight.w600),
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

  String _greeting(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final hour = DateTime.now().hour;
    if (hour < 12) return l10n.dashboardGreetingMorning;
    if (hour < 17) return l10n.dashboardGreetingAfternoon;
    return l10n.dashboardGreetingEvening;
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final double amount;
  final String currency;
  final Color color;
  final IconData icon;
  final int count;
  final String countLabel;

  const _StatCard({
    required this.label,
    required this.amount,
    required this.currency,
    required this.color,
    required this.icon,
    required this.count,
    required this.countLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '$currency ${amount.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '$count $countLabel',
            style: TextStyle(
              fontSize: 11,
              color: color.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
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
    return Dismissible(
      key: Key(invoice.id),
      background: Container(
        decoration: BoxDecoration(
          color: AppColors.successGreen,
          borderRadius: BorderRadius.circular(14),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, color: Colors.white, size: 28),
            const SizedBox(height: 4),
            Text(l10n.dashboardMarkPaid,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      secondaryBackground: Container(
        decoration: BoxDecoration(
          color: AppColors.dangerRed,
          borderRadius: BorderRadius.circular(14),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.delete_outline, color: Colors.white, size: 28),
            const SizedBox(height: 4),
            Text(l10n.commonDelete,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          if (invoice.status != InvoiceStatus.paid) {
            onMarkPaid();
          }
          return false;
        } else {
          return await _confirmDelete(context);
        }
      },
      onDismissed: (_) {
        context.read<InvoiceProvider>().deleteInvoice(invoice.id);
      },
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    invoice.clientName.isNotEmpty
                        ? invoice.clientName[0].toUpperCase()
                        : '?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
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
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7),
                          ),
                        ),
                        Text(
                          '${invoice.currency} ${invoice.total.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          invoice.clientName,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InvoiceStatusBadge(status: invoice.status),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${l10n.dashboardDuePrefix}${_formatDate(invoice.dueDate)}',
                      style: TextStyle(
                          fontSize: 12, color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.chevron_right,
                  color: Theme.of(context).dividerColor, size: 20),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _confirmDelete(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    return await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            title: Text(l10n.deleteInvoiceTitle),
            content:
                Text(l10n.deleteInvoiceMessage(invoice.invoiceNumber)),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(l10n.commonCancel),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
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
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${date.day} ${months[date.month - 1]}';
  }
}

class _EmptyState extends StatelessWidget {
  final VoidCallback onCreateInvoice;
  const _EmptyState({required this.onCreateInvoice});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.receipt_long_outlined,
                size: 40, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.dashboardNoInvoicesYet,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.dashboardNoInvoicesSubtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6)),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onCreateInvoice,
            icon: const Icon(Icons.add),
            label: Text(l10n.dashboardCreateInvoice),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(180, 48),
            ),
          ),
        ],
      ),
    );
  }
}
