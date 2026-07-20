import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/client_provider.dart';
import '../../providers/invoice_provider.dart';
import '../../models/client.dart';
import '../../core/theme/app_colors.dart';
import 'create_client_screen.dart';
import 'client_detail_screen.dart';

class ClientListScreen extends StatefulWidget {
  const ClientListScreen({Key? key}) : super(key: key);

  @override
  State<ClientListScreen> createState() => _ClientListScreenState();
}

class _ClientListScreenState extends State<ClientListScreen> {
  final _searchCtrl = TextEditingController();
  String _query = '';
  bool _showSearch = false;

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ClientProvider>(
      builder: (context, provider, _) {
        final clients = provider.searchClients(_query);
        final totalBilled = provider.clients
            .fold<double>(0, (sum, c) => sum + c.totalBilled);
        final l10n = AppLocalizations.of(context)!;

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
                icon: const Icon(Icons.add),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const CreateClientScreen()),
                ),
              ),
            ],
          ),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : provider.clients.isEmpty
                  ? _EmptyClients(
                      onAdd: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const CreateClientScreen()),
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          color: AppColors.primaryPale,
                          child: Row(
                            children: [
                              _StatItem(
                                label: l10n.clientListTotalClients,
                                value:
                                    provider.clients.length.toString(),
                                icon: Icons.people_outline,
                              ),
                              const SizedBox(width: 24),
                              _StatItem(
                                label: l10n.clientListTotalBilled,
                                value:
                                    'AED ${totalBilled.toStringAsFixed(0)}',
                                icon:
                                    Icons.account_balance_wallet_outlined,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: provider.loadClients,
                            child: clients.isEmpty
                                ? Center(
                                    child: Text(
                                      l10n.clientListEmptySearch,
                                      style: const TextStyle(
                                          color: AppColors.gray400),
                                    ),
                                  )
                                : ListView.separated(
                                    padding: const EdgeInsets.all(16),
                                    itemCount: clients.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 10),
                                    itemBuilder: (ctx, i) =>
                                        _ClientCard(
                                          client: clients[i],
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) =>
                                                  ClientDetailScreen(
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
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => const CreateClientScreen()),
            ),
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label, value;
  final IconData icon;
  const _StatItem(
      {required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primaryBlue, size: 20),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: const TextStyle(
                    fontSize: 11, color: AppColors.gray500)),
            Text(value,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryBlue)),
          ],
        ),
      ],
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
    return GestureDetector(
      onTap: onTap,
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
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryBlue,
                    AppColors.primaryLight
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  client.initials,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    client.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    client.email,
                    style: const TextStyle(
                        fontSize: 13, color: AppColors.gray500),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      _ClientChip(
                        label: l10n.clientListInvoiceCount(client.totalInvoices.toString()),
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
                  'AED ${client.totalBilled.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryBlue,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.clientListTotalBilledLabel,
                  style: const TextStyle(
                      fontSize: 11, color: AppColors.gray400),
                ),
                const SizedBox(height: 6),
                const Icon(Icons.chevron_right,
                    color: AppColors.gray300, size: 20),
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
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: AppColors.gray500),
          const SizedBox(width: 4),
          Text(label,
              style: const TextStyle(
                  fontSize: 11, color: AppColors.gray500)),
        ],
      ),
    );
  }
}

class _EmptyClients extends StatelessWidget {
  final VoidCallback onAdd;
  const _EmptyClients({required this.onAdd});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.primaryPale,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.people_outline,
                  size: 40, color: AppColors.primaryBlue),
            ),
            const SizedBox(height: 16),
            Text(
              l10n.clientListEmpty,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.clientListEmptySubtitle,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 14, color: AppColors.gray500),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.add),
              label: Text(l10n.clientListAddClient),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 48)),
            ),
          ],
        ),
      ),
    );
  }
}
