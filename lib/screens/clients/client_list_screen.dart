import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/client_provider.dart';
import '../../models/client.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/currency_utils.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/app_empty_state.dart';
import 'create_client_screen.dart';
import 'client_detail_screen.dart';

class ClientListScreen extends StatefulWidget {
  const ClientListScreen({super.key});

  @override
  State<ClientListScreen> createState() => _ClientListScreenState();
}

class _ClientListScreenState extends State<ClientListScreen> {
  final _searchCtrl = TextEditingController();
  String _query = '';
  bool _showSearch = false;
  late Future<String> _currencyFuture;

  @override
  void initState() {
    super.initState();
    _currencyFuture = CurrencyUtils.resolveDefaultCurrency();
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Consumer<ClientProvider>(
      builder: (context, provider, _) {
        final clients = provider.searchClients(_query);
        final totalBilled = provider.clients
            .fold<double>(0, (sum, c) => sum + c.totalBilled);

        return Scaffold(
          appBar: AppBar(
            title: _showSearch
                ? TextField(
                    controller: _searchCtrl,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: l10n.clientListSearchHint,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    onChanged: (v) => setState(() => _query = v),
                  )
                : Text(l10n.clientListTitle),
            actions: [
              IconButton(
                icon: Icon(_showSearch ? Icons.close : Icons.search),
                onPressed: () => setState(() {
                  _showSearch = !_showSearch;
                  if (!_showSearch) {
                    _query = '';
                    _searchCtrl.clear();
                  }
                }),
              ),
              IconButton(
                icon: const Icon(Icons.add_rounded),
                onPressed: _openCreateClient,
              ),
            ],
          ),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : provider.clients.isEmpty
                  ? AppEmptyState(
                      icon: Icons.people_outline_rounded,
                      title: l10n.clientListEmpty,
                      subtitle: l10n.clientListEmptySubtitle,
                      actionLabel: l10n.clientListAddClient,
                      onAction: _openCreateClient,
                    )
                  : Column(
                      children: [
                        _SummaryHeader(
                          clientCount: provider.clients.length,
                          totalBilled: totalBilled,
                          currencyFuture: _currencyFuture,
                        ),
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: provider.loadClients,
                            child: clients.isEmpty
                                ? _NoResults(message: l10n.clientListEmptySearch)
                                : ListView.separated(
                                    padding:
                                        const EdgeInsets.fromLTRB(16, 4, 16, 100),
                                    itemCount: clients.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 10),
                                    itemBuilder: (ctx, i) => _ClientCard(
                                      client: clients[i],
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => ClientDetailScreen(
                                              client: clients[i]),
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
          floatingActionButton: FloatingActionButton(
            onPressed: _openCreateClient,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Icon(Icons.add_rounded, size: 28),
          ),
        );
      },
    );
  }

  void _openCreateClient() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const CreateClientScreen()),
    );
  }
}

class _SummaryHeader extends StatelessWidget {
  final int clientCount;
  final double totalBilled;
  final Future<String> currencyFuture;

  const _SummaryHeader({
    required this.clientCount,
    required this.totalBilled,
    required this.currencyFuture,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Row(
        children: [
          Expanded(
            child: _StatCard(
              icon: Icons.people_outline_rounded,
              label: l10n.clientListTotalClients,
              value: clientCount.toString(),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: FutureBuilder<String>(
              future: currencyFuture,
              builder: (context, snap) {
                final currency = snap.data ?? 'AED';
                return _StatCard(
                  icon: Icons.account_balance_wallet_outlined,
                  label: l10n.clientListTotalBilled,
                  value: '$currency ${totalBilled.toStringAsFixed(0)}',
                  accent: AppColors.successGreen,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color accent;

  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    this.accent = AppColors.primaryBlue,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: accent.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(icon, size: 19, color: accent),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NoResults extends StatelessWidget {
  final String message;
  const _NoResults({required this.message});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off_rounded,
                size: 48, color: scheme.onSurfaceVariant),
            const SizedBox(height: 12),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ClientCard extends StatelessWidget {
  final Client client;
  final VoidCallback onTap;
  const _ClientCard({required this.client, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return GestureDetector(
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
            AppAvatar(initials: client.initials, size: 50),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    client.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    client.email,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _ClientChip(
                        label: l10n.clientListInvoiceCount(
                            client.totalInvoices.toString()),
                        icon: Icons.receipt_long_outlined,
                      ),
                      const SizedBox(width: 8),
                      _ClientChip(
                        label: client.currency,
                        icon: Icons.monetization_on_outlined,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${client.currency} ${client.totalBilled.toStringAsFixed(0)}',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.clientListTotalBilledLabel,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                        fontSize: 10,
                      ),
                ),
                const SizedBox(height: 8),
                Icon(Icons.chevron_right_rounded,
                    color: scheme.outline, size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ClientChip extends StatelessWidget {
  final String label;
  final IconData icon;
  const _ClientChip({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: scheme.onSurfaceVariant),
          const SizedBox(width: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                  color: scheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}
