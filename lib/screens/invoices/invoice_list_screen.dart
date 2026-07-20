import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/invoice_provider.dart';
import '../../models/invoice.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/invoice_status_badge.dart';
import '../../providers/subscription_provider.dart';
import '../settings/paywall_screen.dart';
import 'create_invoice_screen.dart';
import 'invoice_detail_screen.dart';

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
        filtered =
            invoices.where((i) => i.status == InvoiceStatus.paid).toList();
        break;
      case 2:
        filtered =
            invoices.where((i) => i.status == InvoiceStatus.sent).toList();
        break;
      case 3:
        filtered =
            invoices.where((i) => i.status == InvoiceStatus.overdue).toList();
        break;
      case 4:
        filtered =
            invoices.where((i) => i.status == InvoiceStatus.draft).toList();
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
    return filtered;
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
                      contentPadding: EdgeInsets.zero,
                    ),
                    onChanged: (v) => setState(() => _searchQuery = v),
                  )
                : Text(loc.invoiceListTitle),
            actions: [
              IconButton(
                icon: Icon(_showSearch ? Icons.close : Icons.search),
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
              PopupMenuButton<String>(
                icon: const Icon(Icons.sort),
                onSelected: (_) {},
                itemBuilder: (_) => [
                  PopupMenuItem(
                      value: 'date', child: Text(loc.invoiceListSortDate)),
                  PopupMenuItem(
                      value: 'amount', child: Text(loc.invoiceListSortAmount)),
                  PopupMenuItem(
                      value: 'client', child: Text(loc.invoiceListSortClient)),
                ],
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(56),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TabBar(
                  controller: _tabController,
                  isScrollable: false,
                  labelPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primary,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.35),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  overlayColor:
                      MaterialStateProperty.all(Colors.transparent),
                  labelColor: Theme.of(context).colorScheme.onPrimary,
                  unselectedLabelColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 12),
                  unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 12),
                  tabs: [
                    _InvoiceTabLabel(
                      controller: _tabController,
                      index: 0,
                      icon: Icons.list_alt_rounded,
                      label: loc.invoiceListTabAll,
                      count: provider.invoices.length,
                    ),
                    _InvoiceTabLabel(
                      controller: _tabController,
                      index: 1,
                      icon: Icons.check_circle_outline_rounded,
                      label: loc.invoiceListTabPaid,
                      count: provider.paidInvoices.length,
                    ),
                    _InvoiceTabLabel(
                      controller: _tabController,
                      index: 2,
                      icon: Icons.send_outlined,
                      label: loc.invoiceListTabPending,
                      count: provider.pendingInvoices.length,
                    ),
                    _InvoiceTabLabel(
                      controller: _tabController,
                      index: 3,
                      icon: Icons.warning_amber_rounded,
                      label: loc.invoiceListTabOverdue,
                      count: provider.overdueInvoices.length,
                    ),
                    _InvoiceTabLabel(
                      controller: _tabController,
                      index: 4,
                      icon: Icons.edit_note_rounded,
                      label: loc.invoiceListTabDraft,
                      count: provider.draftInvoices.length,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: List.generate(5, (tabIndex) {
              final filtered =
                  _filterInvoices(provider.invoices, tabIndex);
              return _InvoiceTab(
                invoices: filtered,
                onRefresh: provider.loadInvoices,
              );
            }),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
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
            },
            child: const Icon(Icons.add),
          ),
        );
      },
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
                size: 56, color: Theme.of(context).dividerColor),
            const SizedBox(height: 12),
            Text(
              AppLocalizations.of(context)!.invoiceListEmpty,
              style:
                  TextStyle(fontSize: 16, color: Theme.of(context).hintColor),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
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
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => InvoiceDetailScreen(invoice: invoice)),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  invoice.invoiceNumber,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6),
                  ),
                ),
                Text(
                  '${invoice.currency} ${invoice.total.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          invoice.clientName.isNotEmpty
                              ? invoice.clientName[0].toUpperCase()
                              : '?',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      invoice.clientName,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                InvoiceStatusBadge(status: invoice.status),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${loc.dashboardDuePrefix}${_formatDate(invoice.dueDate)}',
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).hintColor),
                ),
                if (invoice.status == InvoiceStatus.overdue)
                  Text(
                    loc.dashboardDaysOverdue(_daysOverdue(invoice.dueDate).toString()),
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.dangerRed,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ],
            ),
            // Quick actions
            const SizedBox(height: 10),
            Divider(height: 1, color: Theme.of(context).dividerColor),
            const SizedBox(height: 10),
            Row(
              children: [
                _QuickAction(
                  icon: Icons.visibility_outlined,
                  label: loc.commonView,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            InvoiceDetailScreen(invoice: invoice)),
                  ),
                ),
                const SizedBox(width: 8),
                if (invoice.status != InvoiceStatus.paid)
                  _QuickAction(
                    icon: Icons.check_circle_outline,
                    label: loc.dashboardMarkPaid,
                    color: AppColors.successGreen,
                    onTap: () =>
                        context.read<InvoiceProvider>().markAsPaid(invoice.id),
                  ),
                const Spacer(),
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
        title: Text(loc.deleteInvoiceTitle),
        content: Text(
            loc.deleteInvoiceMessage(invoice.invoiceNumber)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(loc.commonCancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
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

  String _formatDate(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }

  int _daysOverdue(DateTime dueDate) {
    return DateTime.now().difference(dueDate).inDays;
  }
}

class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color color;

  const _QuickAction({
    required this.icon,
    required this.label,
    required this.onTap,
    this.color = AppColors.primaryBlue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: color),
            const SizedBox(width: 4),
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
      ),
    );
  }
}

class _InvoiceTabLabel extends StatelessWidget {
  final TabController controller;
  final int index;
  final IconData icon;
  final String label;
  final int count;

  const _InvoiceTabLabel({
    required this.controller,
    required this.index,
    required this.icon,
    required this.label,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;
    final onPrimary = theme.colorScheme.onPrimary;
    final muted = theme.colorScheme.onSurface.withOpacity(0.6);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final selected = controller.index == index;
        final fg = selected ? onPrimary : muted;
        return Tab(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 16, color: fg),
                const SizedBox(width: 5),
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: fg),
                  ),
                ),
                const SizedBox(width: 4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                  decoration: BoxDecoration(
                    color: selected
                        ? onPrimary.withOpacity(0.22)
                        : primary.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '$count',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: selected ? onPrimary : primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
