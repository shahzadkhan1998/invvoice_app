import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../models/client.dart';
import '../../providers/client_provider.dart';
import '../../providers/invoice_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/invoice_status_badge.dart';
import '../invoices/create_invoice_screen.dart';
import '../invoices/invoice_detail_screen.dart';
import 'create_client_screen.dart';

class ClientDetailScreen extends StatelessWidget {
  final Client client;
  const ClientDetailScreen({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final invoiceProvider = context.watch<InvoiceProvider>();
    final clientInvoices = invoiceProvider.invoices
        .where((inv) => inv.clientId == client.id)
        .toList();
    final paid = clientInvoices
        .where((i) => i.status.toString().contains('paid'))
        .fold<double>(0, (s, i) => s + i.total);
    final outstanding = clientInvoices
        .where((i) => i.status.toString().contains('sent') ||
            i.status.toString().contains('overdue'))
        .fold<double>(0, (s, i) => s + i.total);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(client.name),
        actions: [
          IconButton(
            icon: Icon(Icons.edit_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => CreateClientScreen(editClient: client)),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline, color: AppColors.dangerRed),
            onPressed: () => _confirmDelete(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Theme.of(context).colorScheme.primary, AppColors.primaryDark],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        client.initials,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    client.name,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    client.email,
                    style: TextStyle(
                        fontSize: 14, color: Colors.white70),
                  ),
                  if (client.phone != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      client.phone!,
                      style: TextStyle(
                          fontSize: 14, color: Colors.white70),
                    ),
                  ],
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _HeaderStat(
                        label: l10n.clientDetailInvoices,
                        value: clientInvoices.length.toString(),
                      ),
                      _vDivider(),
                      _HeaderStat(
                        label: l10n.clientDetailTotalBilled,
                        value:
                            '${client.currency} ${client.totalBilled.toStringAsFixed(0)}',
                      ),
                      _vDivider(),
                      _HeaderStat(
                        label: l10n.clientDetailOutstanding,
                        value:
                            '${client.currency} ${outstanding.toStringAsFixed(0)}',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _ActionButton(
                          icon: Icons.receipt_long_outlined,
                          label: l10n.clientDetailNewInvoice,
                          color: Theme.of(context).colorScheme.primary,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CreateInvoiceScreen(),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _ActionButton(
                          icon: Icons.email_outlined,
                          label: l10n.clientDetailEmailClient,
                          color: AppColors.successGreen,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _ActionButton(
                          icon: Icons.edit_outlined,
                          label: l10n.clientDetailEdit,
                          color: AppColors.warningAmber,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  CreateClientScreen(editClient: client),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  _sectionTitle(l10n.clientDetailClientDetails),
                  const SizedBox(height: 12),
                  _DetailCard(children: [
                    _DetailRow(
                        icon: Icons.email_outlined,
                        label: l10n.clientDetailEmail,
                        value: client.email),
                    if (client.phone != null)
                      _DetailRow(
                          icon: Icons.phone_outlined,
                          label: l10n.clientDetailPhone,
                          value: client.phone!),
                    if (client.address != null)
                      _DetailRow(
                          icon: Icons.home_outlined,
                          label: l10n.clientDetailAddress,
                          value: client.address!),
                    if (client.city != null)
                      _DetailRow(
                          icon: Icons.location_city_outlined,
                          label: l10n.clientDetailCity,
                          value: client.city!),
                    _DetailRow(
                        icon: Icons.attach_money,
                        label: l10n.clientDetailCurrency,
                        value: client.currency),
                    _DetailRow(
                        icon: Icons.percent,
                        label: l10n.clientDetailTaxRate,
                        value:
                            '${client.defaultTaxRate.toStringAsFixed(0)}%'),
                    if (client.vatNumber != null)
                      _DetailRow(
                          icon: Icons.numbers_outlined,
                          label: l10n.clientDetailVatNumber,
                          value: client.vatNumber!),
                  ]),

                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _sectionTitle(l10n.clientDetailInvoiceHistory),
                      Text(
                        '${clientInvoices.length} total',
                        style: TextStyle(
                            fontSize: 13, color: Theme.of(context).hintColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  if (clientInvoices.isEmpty)
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          l10n.clientDetailNoInvoices,
                          style: TextStyle(color: Theme.of(context).hintColor),
                        ),
                      ),
                    )
                  else
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: clientInvoices.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(height: 8),
                      itemBuilder: (ctx, i) {
                        final inv = clientInvoices[i];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  InvoiceDetailScreen(invoice: inv),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardTheme.color,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        inv.invoiceNumber,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        _formatDate(inv.invoiceDate),
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '${inv.currency} ${inv.total.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    InvoiceStatusBadge(
                                      status: inv.status,
                                      compact: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget _vDivider() => Container(
        width: 1,
        height: 36,
        color: Colors.white30,
      );

  void _confirmDelete(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
        title: Text(l10n.deleteClientTitle),
        content: Text(l10n.deleteClientMessage(client.name)),
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
    );

    if (confirmed == true && context.mounted) {
      context.read<ClientProvider>().deleteClient(client.id);
      Navigator.pop(context);
    }
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan','Feb','Mar','Apr','May','Jun',
      'Jul','Aug','Sep','Oct','Nov','Dec'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}

class _HeaderStat extends StatelessWidget {
  final String label, value;
  const _HeaderStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(fontSize: 11, color: Colors.white70),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailCard extends StatelessWidget {
  final List<Widget> children;
  const _DetailCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: children.asMap().entries.map((entry) {
          final isLast = entry.key == children.length - 1;
          return Column(
            children: [
              entry.value,
              if (!isLast)
                Divider(height: 1, color: Theme.of(context).dividerColor,
                    indent: 16, endIndent: 16),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label, value;
  const _DetailRow(
      {required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Theme.of(context).hintColor),
          const SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(
                fontSize: 13, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
