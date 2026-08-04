import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/invoice_provider.dart';
import '../../models/invoice.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/invoice_status_badge.dart';
import '../../providers/subscription_provider.dart';
import '../settings/paywall_screen.dart';
import 'create_invoice_screen.dart';
import 'invoice_detail_screen.dart';

enum _SortOption { date, amount, client }

class InvoiceListScreen extends StatefulWidget {
  const InvoiceListScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceListScreen> createState() => _InvoiceListScreenState();
}

class _InvoiceListScreenState extends State<InvoiceListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _searchCtrl = TextEditingController();
  String _searchQuery = '';
  bool _showSearch = false;
  _SortOption _sort = _SortOption.date;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchCtrl.dispose();
    super.dispose();
  }

  List<Invoice> _filterInvoices(List<Invoice> invoices, int tabIndex) {
    List<Invoice> filtered;
    switch (tabIndex) {
      case 1:
        filtered = invoices.where((i) => i.status == InvoiceStatus.paid).toList();
        break;
      case 2:
        filtered = invoices.where((i) => i.status == InvoiceStatus.sent).toList();
        break;
      case 3:
        filtered = invoices.where((i) => i.status == InvoiceStatus.overdue).toList();
        break;
      case 4:
        filtered = invoices.where((i) => i.status == InvoiceStatus.draft).toList();
        break;
      default:
        filtered = invoices;
    }

    if (_searchQuery.isNotEmpty) {
      final q = _searchQuery.toLowerCase();
      filtered = filtered.where((i) {
        return i.invoiceNumber.toLowerCase().contains(q) ||
            i.clientName.toLowerCase().contains(q);
      }).toList();
    }

    switch (_sort) {
      case _SortOption.date:
        filtered.sort((a, b) => b.invoiceDate.compareTo(a.invoiceDate));
        break;
      case _SortOption.amount:
        filtered.sort((a, b) => b.total.compareTo(a.total));
        break;
      case _SortOption.client:
        filtered.sort((a, b) => a.clientName.toLowerCase().compareTo(b.clientName.toLowerCase()));
        break;
    }
    return filtered;
  }

  void _openCreateInvoice(BuildContext context) {
    final sub = Provider.of<SubscriptionProvider>(context, listen: false);
    sub.refresh();
    if (!sub.canCreateInvoice) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const PaywallScreen()),
      );
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const CreateInvoiceScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InvoiceProvider>(
      builder: (context, provider, _) {
        final loc = AppLocalizations.of(context)!;
        return Scaffold(
          appBar: AppBar(
            title: _showSearch
                ? TextField(
                    controller: _searchCtrl,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: loc.invoiceListSearchHint,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: false,
                      contentPadding: EdgeInsets.zero,
                    ),
                    onChanged: (v) => setState(() => _searchQuery = v),
                  )
                : Text(loc.invoiceListTitle),
            actions: [
              IconButton(
                icon: Icon(_showSearch ? Icons.close : Icons.search_rounded),
                onPressed: () {
                  setState(() {
                    _showSearch = !_showSearch;
                    if (!_showSearch) {
                      _searchQuery = '';
                      _searchCtrl.clear();
                    }
                  });
                },
              ),
              PopupMenuButton<_SortOption>(
                icon: Icon(
                  _sort == _SortOption.date
                      ? Icons.swap_vert_rounded
                      : Icons.sort_rounded,
                ),
                onSelected: (value) => setState(() => _sort = value),
                itemBuilder: (_) => [
                  PopupMenuItem(
                    value: _SortOption.date,
                    child: _SortItem(
                      label: loc.invoiceListSortDate,
                      selected: _sort == _SortOption.date,
                    ),
                  ),
                  PopupMenuItem(
                    value: _SortOption.amount,
                    child: _SortItem(
                      label: loc.invoiceListSortAmount,
                      selected: _sort == _SortOption.amount,
                    ),
                  ),
                  PopupMenuItem(
                    value: _SortOption.client,
                    child: _SortItem(
                      label: loc.invoiceListSortClient,
                      selected: _sort == _SortOption.client,
                    ),
                  ),
                ],
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(64),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 14),
                child: _SegmentedFilter(
                  controller: _tabController,
                  counts: {
                    0: provider.invoices.length,
                    1: provider.paidInvoices.length,
                    2: provider.pendingInvoices.length,
                    3: provider.overdueInvoices.length,
                    4: provider.draftInvoices.length,
                  },
                  labels: [
                    loc.invoiceListTabAll,
                    loc.invoiceListTabPaid,
                    loc.invoiceListTabPending,
                    loc.invoiceListTabOverdue,
                    loc.invoiceListTabDraft,
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: List.generate(5, (tabIndex) {
              final filtered = _filterInvoices(provider.invoices, tabIndex);
              return _InvoiceTab(
                invoices: filtered,
                onRefresh: provider.loadInvoices,
              );
            }),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _openCreateInvoice(context),
            child: const Icon(Icons.add_rounded),
          ),
        );
      },
    );
  }
}

/// Horizontal scrollable pill segmented control with counts.
class _SegmentedFilter extends StatelessWidget {
  final TabController controller;
  final List<String> labels;
  final Map<int, int> counts;

  const _SegmentedFilter({
    required this.controller,
    required this.labels,
    required this.counts,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      height: 42,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TabBar(
        controller: controller,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelPadding: const EdgeInsets.symmetric(horizontal: 10),
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: scheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        labelColor: scheme.onSurface,
        unselectedLabelColor: scheme.onSurfaceVariant,
        labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12.5),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12.5),
        tabs: List.generate(labels.length, (i) {
          final count = counts[i] ?? 0;
          return Tab(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(labels[i]),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                  decoration: BoxDecoration(
                    color: scheme.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '$count',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: scheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _SortItem extends StatelessWidget {
  final String label;
  final bool selected;

  const _SortItem({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label),
        const SizedBox(width: 8),
        if (selected)
          Icon(Icons.check_rounded,
              size: 18, color: Theme.of(context).colorScheme.primary),
      ],
    );
  }
}

class _InvoiceTab extends StatelessWidget {
  final List<Invoice> invoices;
  final Future<void> Function() onRefresh;

  const _InvoiceTab({
    required this.invoices,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    if (invoices.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.receipt_long_outlined,
                size: 56, color: Theme.of(context).colorScheme.onSurfaceVariant),
            const SizedBox(height: 12),
            Text(
              AppLocalizations.of(context)!.invoiceListEmpty,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      color: Theme.of(context).colorScheme.primary,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
        itemCount: invoices.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (ctx, i) => _InvoiceListItem(invoice: invoices[i]),
      ),
    );
  }
}

class _InvoiceListItem extends StatelessWidget {
  final Invoice invoice;
  const _InvoiceListItem({required this.invoice});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => InvoiceDetailScreen(invoice: invoice)),
      ),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Column(
          children: [
            Row(
              children: [
                AppAvatar(
                  initials:
                      invoice.clientName.isNotEmpty ? invoice.clientName[0] : '?',
                  size: 44,
                  radius: 13,
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
                            '${invoice.currency} ${_money(invoice.total)}',
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
                          Expanded(
                            child: Text(
                              invoice.clientName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          InvoiceStatusBadge(status: invoice.status),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(height: 1, color: scheme.outlineVariant),
            const SizedBox(height: 8),
            Row(
              children: [
                _MetaLabel(
                  icon: Icons.event_rounded,
                  text: '${loc.dashboardDuePrefix}${_date(invoice.dueDate)}',
                  color: scheme.onSurfaceVariant,
                ),
                const SizedBox(width: 10),
                if (invoice.status == InvoiceStatus.overdue)
                  _MetaLabel(
                    icon: Icons.warning_amber_rounded,
                    text: loc.dashboardDaysOverdue(
                        _daysOverdue(invoice.dueDate).toString()),
                    color: AppColors.dangerRed,
                  ),
                const Spacer(),
                _QuickAction(
                  icon: Icons.check_circle_outline,
                  label: loc.dashboardMarkPaid,
                  color: AppColors.successGreen,
                  onTap: invoice.status == InvoiceStatus.paid
                      ? null
                      : () => context
                          .read<InvoiceProvider>()
                          .markAsPaid(invoice.id),
                ),
                const SizedBox(width: 6),
                _QuickAction(
                  icon: Icons.delete_outline,
                  label: loc.commonDelete,
                  color: AppColors.dangerRed,
                  onTap: () => _confirmDelete(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context) async {
    final loc = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(loc.deleteInvoiceTitle),
        content: Text(loc.deleteInvoiceMessage(invoice.invoiceNumber)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(loc.commonCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.dangerRed,
              minimumSize: const Size(80, 40),
            ),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(loc.commonDelete),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      context.read<InvoiceProvider>().deleteInvoice(invoice.id);
      context.read<SubscriptionProvider>().refresh();
    }
  }

  String _money(double value) {
    final isWhole = value == value.roundToDouble();
    return isWhole ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  }

  String _date(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return '${date.day} ${months[date.month - 1]}';
  }

  int _daysOverdue(DateTime dueDate) {
    return DateTime.now().difference(dueDate).inDays;
  }
}

class _MetaLabel extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _MetaLabel({
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 12, color: color),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final Color color;

  const _QuickAction({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: color),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 11.5,
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
