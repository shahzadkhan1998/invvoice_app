import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/invoice_provider.dart';
import '../../models/invoice.dart';
import '../../core/theme/app_colors.dart';

/// Business analytics built with pure Flutter widgets (no chart dependency).
class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(loc.reportsTitle)),
      body: Consumer<InvoiceProvider>(
        builder: (context, provider, _) {
          if (provider.invoices.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.insert_chart_outlined,
                      size: 56,
                      color: Theme.of(context).colorScheme.onSurfaceVariant),
                  const SizedBox(height: 12),
                  Text(
                    loc.reportsEmpty,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: provider.loadInvoices,
            color: Theme.of(context).colorScheme.primary,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _SummaryCards(invoices: provider.invoices),
                const SizedBox(height: 20),
                _RevenueChart(invoices: provider.invoices),
                const SizedBox(height: 20),
                _StatusBreakdown(invoices: provider.invoices),
                const SizedBox(height: 20),
                _TopClients(invoices: provider.invoices),
                const SizedBox(height: 32),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SummaryCards extends StatelessWidget {
  final List<Invoice> invoices;
  const _SummaryCards({required this.invoices});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final now = DateTime.now();
    final paidThisYear = invoices
        .where((i) =>
            i.status == InvoiceStatus.paid &&
            i.paidDate != null &&
            i.paidDate!.year == now.year)
        .fold<double>(0, (s, i) => s + i.total);
    final outstanding = invoices
        .where((i) =>
            i.status == InvoiceStatus.sent ||
            i.status == InvoiceStatus.overdue)
        .fold<double>(0, (s, i) => s + i.total);
    final collected = invoices
        .where((i) => i.status == InvoiceStatus.paid)
        .fold<double>(0, (s, i) => s + i.total);

    return Row(
      children: [
        Expanded(
          child: _MetricCard(
            label: loc.reportsCollected,
            value: _money(loc, collected),
            icon: Icons.account_balance_wallet_outlined,
            color: AppColors.successGreen,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _MetricCard(
            label: loc.reportsOutstanding,
            value: _money(loc, outstanding),
            icon: Icons.pending_actions_outlined,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _MetricCard(
            label: '${now.year}',
            value: _money(loc, paidThisYear),
            icon: Icons.trending_up_rounded,
            color: AppColors.warningAmber,
          ),
        ),
      ],
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;
  const _MetricCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(icon, size: 18, color: color),
          ),
          const SizedBox(height: 10),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}

class _RevenueChart extends StatelessWidget {
  final List<Invoice> invoices;
  const _RevenueChart({required this.invoices});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final now = DateTime.now();
    final months = <DateTime>[];
    for (int i = 5; i >= 0; i--) {
      months.add(DateTime(now.year, now.month - i, 1));
    }
    final values = months
        .map((m) => invoices
            .where((i) =>
                i.status != InvoiceStatus.cancelled &&
                i.invoiceDate.year == m.year &&
                i.invoiceDate.month == m.month)
            .fold<double>(0, (s, i) => s + i.total))
        .toList();
    final maxValue = values.fold<double>(0, (a, b) => a > b ? a : b);

    return _Card(
      title: loc.reportsMonthlyRevenue,
      subtitle: loc.reportsLast6Months,
      child: SizedBox(
        height: 180,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(months.length, (i) {
            final value = values[i];
            final height = maxValue == 0
                ? 0.0
                : (value / maxValue).clamp(0.04, 1.0);
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      _shortMoney(value),
                      style: TextStyle(
                        fontSize: 8.5,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 100,
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: (height * 100).toDouble(),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              scheme.primary.withValues(alpha: 0.7),
                              scheme.primary,
                            ],
                          ),
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(6),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      _monthAbbrev(months[i].month),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _StatusBreakdown extends StatelessWidget {
  final List<Invoice> invoices;
  const _StatusBreakdown({required this.invoices});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final entries = <(String, List<Invoice>, Color)>[
      (loc.statusPaid, invoices.where((i) => i.status == InvoiceStatus.paid).toList(), AppColors.successGreen),
      (loc.statusPending, invoices.where((i) => i.status == InvoiceStatus.sent).toList(), Theme.of(context).colorScheme.primary),
      (loc.statusOverdue, invoices.where((i) => i.status == InvoiceStatus.overdue).toList(), AppColors.dangerRed),
      (loc.statusDraft, invoices.where((i) => i.status == InvoiceStatus.draft).toList(), AppColors.warningAmber),
    ];
    final grandTotal = entries.fold<double>(0, (s, e) => s + e.$2.fold<double>(0, (a, b) => a + b.total));

    return _Card(
      title: loc.reportsByStatus,
      child: Column(
        children: entries
            .where((e) => e.$2.isNotEmpty)
            .map((e) {
              final total = e.$2.fold<double>(0, (a, b) => a + b.total);
              final fraction = grandTotal == 0 ? 0.0 : total / grandTotal;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: e.$3,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 80,
                      child: Text(
                        e.$1,
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: fraction,
                          minHeight: 8,
                          backgroundColor:
                              Theme.of(context).colorScheme.surfaceContainerHighest,
                          valueColor: AlwaysStoppedAnimation(e.$3),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 90,
                      child: Text(
                        '${e.$2.length} • ${_money(loc, total)}',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })
            .toList(),
      ),
    );
  }
}

class _TopClients extends StatelessWidget {
  final List<Invoice> invoices;
  const _TopClients({required this.invoices});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final byClient = <String, double>{};
    for (final invoice in invoices) {
      if (invoice.status == InvoiceStatus.cancelled) continue;
      byClient[invoice.clientName] =
          (byClient[invoice.clientName] ?? 0) + invoice.total;
    }
    final top = byClient.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    if (top.isEmpty) return const SizedBox.shrink();

    return _Card(
      title: loc.reportsTopClients,
      child: Column(
        children: top.take(5).map((entry) {
          final maxValue = top.first.value;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: scheme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      entry.key.isNotEmpty ? entry.key[0].toUpperCase() : '?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: scheme.primary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        entry.key,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 13.5, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 3),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: maxValue == 0
                              ? 0
                              : entry.value / maxValue,
                          minHeight: 5,
                          backgroundColor:
                              scheme.surfaceContainerHighest,
                          valueColor: AlwaysStoppedAnimation(scheme.primary),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  _money(loc, entry.value),
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget child;
  const _Card({
    required this.title,
    required this.child,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w800)),
          if (subtitle != null) ...[
            const SizedBox(height: 2),
            Text(
              subtitle!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
            ),
          ],
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}

String _money(AppLocalizations loc, double value) {
  final isWhole = value == value.roundToDouble();
  return isWhole ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
}

String _shortMoney(double value) {
  if (value >= 1000000) return '${(value / 1000000).toStringAsFixed(1)}M';
  if (value >= 1000) return '${(value / 1000).toStringAsFixed(1)}k';
  return value.toStringAsFixed(0);
}

String _monthAbbrev(int month) {
  const months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
    'Nov', 'Dec',
  ];
  return months[month - 1];
}
