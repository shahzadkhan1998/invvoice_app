import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/estimate_provider.dart';
import '../../providers/invoice_provider.dart';
import '../../models/estimate.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/estimate_status_badge.dart';
import 'create_estimate_screen.dart';
import 'estimate_detail_screen.dart';

enum _SortOption { date, amount, client }

class EstimateListScreen extends StatefulWidget {
  const EstimateListScreen({super.key});

  @override
  State<EstimateListScreen> createState() => _EstimateListScreenState();
}

class _EstimateListScreenState extends State<EstimateListScreen>
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

  List<Estimate> _filterEstimates(List<Estimate> estimates, int tabIndex) {
    List<Estimate> filtered;
    switch (tabIndex) {
      case 1:
        filtered = estimates
            .where((e) => e.status == EstimateStatus.draft)
            .toList();
        break;
      case 2:
        filtered = estimates
            .where((e) => e.status == EstimateStatus.sent)
            .toList();
        break;
      case 3:
        filtered = estimates
            .where((e) => e.status == EstimateStatus.accepted)
            .toList();
        break;
      case 4:
        filtered = estimates
            .where((e) => e.status == EstimateStatus.expired)
            .toList();
        break;
      default:
        filtered = estimates;
    }

    if (_searchQuery.isNotEmpty) {
      final q = _searchQuery.toLowerCase();
      filtered = filtered.where((e) {
        return e.estimateNumber.toLowerCase().contains(q) ||
            e.clientName.toLowerCase().contains(q);
      }).toList();
    }

    switch (_sort) {
      case _SortOption.date:
        filtered.sort((a, b) => b.issueDate.compareTo(a.issueDate));
        break;
      case _SortOption.amount:
        filtered.sort((a, b) => b.total.compareTo(a.total));
        break;
      case _SortOption.client:
        filtered.sort((a, b) =>
            a.clientName.toLowerCase().compareTo(b.clientName.toLowerCase()));
        break;
    }
    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Consumer<EstimateProvider>(
      builder: (context, provider, _) {
        int count(EstimateStatus status) => provider.estimates
            .where((e) => e.status == status)
            .length;
        return Scaffold(
          appBar: AppBar(
            title: _showSearch
                ? TextField(
                    controller: _searchCtrl,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: loc.estimateListSearchHint,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: false,
                      contentPadding: EdgeInsets.zero,
                    ),
                    onChanged: (v) => setState(() => _searchQuery = v),
                  )
                : Text(loc.estimateListTitle),
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
                    0: provider.estimates.length,
                    1: count(EstimateStatus.draft),
                    2: count(EstimateStatus.sent),
                    3: count(EstimateStatus.accepted),
                    4: count(EstimateStatus.expired),
                  },
                  labels: [
                    loc.estimateListTabAll,
                    loc.estimateListTabDraft,
                    loc.estimateListTabSent,
                    loc.estimateListTabAccepted,
                    loc.estimateListTabExpired,
                  ],
                ),
              ),
            ),
          ),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : TabBarView(
                  controller: _tabController,
                  children: List.generate(5, (tabIndex) {
                    final filtered =
                        _filterEstimates(provider.estimates, tabIndex);
                    return _EstimateTab(
                      estimates: filtered,
                      onRefresh: provider.load,
                    );
                  }),
                ),
          floatingActionButton: FloatingActionButton(
            heroTag: 'fab-estimates',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CreateEstimateScreen()),
            ),
            child: const Icon(Icons.add_rounded),
          ),
        );
      },
    );
  }
}

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
        labelStyle:
            const TextStyle(fontWeight: FontWeight.w700, fontSize: 12.5),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontSize: 12.5),
        tabs: List.generate(labels.length, (i) {
          final c = counts[i] ?? 0;
          return Tab(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(labels[i]),
                const SizedBox(width: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                  decoration: BoxDecoration(
                    color: scheme.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '$c',
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

class _EstimateTab extends StatelessWidget {
  final List<Estimate> estimates;
  final Future<void> Function() onRefresh;

  const _EstimateTab({required this.estimates, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    if (estimates.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.request_quote_outlined,
                size: 56,
                color: Theme.of(context).colorScheme.onSurfaceVariant),
            const SizedBox(height: 12),
            Text(
              AppLocalizations.of(context)!.estimateListEmpty,
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
        itemCount: estimates.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (ctx, i) => _EstimateListItem(estimate: estimates[i]),
      ),
    );
  }
}

class _EstimateListItem extends StatelessWidget {
  final Estimate estimate;
  const _EstimateListItem({required this.estimate});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => EstimateDetailScreen(estimate: estimate)),
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
                  initials: estimate.clientName.isNotEmpty
                      ? estimate.clientName[0]
                      : '?',
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
                            estimate.estimateNumber,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                  color: scheme.onSurfaceVariant,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            '${estimate.currency} ${_money(estimate.total)}',
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
                              estimate.clientName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          EstimateStatusBadge(status: estimate.status),
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
                  text:
                      '${loc.estimateExpiresPrefix}${_date(estimate.expiryDate)}',
                  color: estimate.expiryDate.isBefore(DateTime.now())
                      ? AppColors.dangerRed
                      : scheme.onSurfaceVariant,
                ),
                const Spacer(),
                _QuickAction(
                  icon: Icons.publish_outlined,
                  label: loc.estimateConvertToInvoice,
                  color: scheme.primary,
                  onTap: () async {
                    await context
                        .read<EstimateProvider>()
                        .convertToInvoice(estimate.id,
                            invoiceProvider:
                                context.read<InvoiceProvider>());
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(loc.estimateConvertedSnackbar),
                        backgroundColor: AppColors.successGreen,
                      ));
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _money(double value) {
    final isWhole = value == value.roundToDouble();
    return isWhole ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  }

  String _date(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
      'Nov', 'Dec',
    ];
    return '${date.day} ${months[date.month - 1]}';
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
