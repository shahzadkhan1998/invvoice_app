import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../models/client.dart';
import '../../models/invoice.dart';
import '../../providers/client_provider.dart';
import '../../providers/invoice_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/invoice_status_badge.dart';
import '../invoices/create_invoice_screen.dart';
import '../invoices/invoice_detail_screen.dart';
import 'create_client_screen.dart';

class ClientDetailScreen extends StatelessWidget {
  final Client client;
  const ClientDetailScreen({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    final invoiceProvider = context.watch<InvoiceProvider>();
    final clientInvoices = invoiceProvider.invoices
        .where((inv) => inv.clientId == client.id)
        .toList();
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
            icon: const Icon(Icons.edit_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => CreateClientScreen(editClient: client)),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline, color: AppColors.dangerRed),
            onPressed: () => _confirmDelete(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ClientHeaderCard(
              client: client,
              invoiceCount: clientInvoices.length,
              totalBilled: client.totalBilled,
              outstanding: outstanding,
            ),
            const SizedBox(height: 20),

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

            _SectionTitle(l10n.clientDetailClientDetails),
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
                  value: '${client.defaultTaxRate.toStringAsFixed(0)}%'),
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
                _SectionTitle(l10n.clientDetailInvoiceHistory),
                Text(
                  '${clientInvoices.length} total',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            if (clientInvoices.isEmpty)
              _EmptyInvoiceHistory(message: l10n.clientDetailNoInvoices)
            else
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: clientInvoices.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (ctx, i) {
                  final inv = clientInvoices[i];
                  return _InvoiceRow(
                    number: inv.invoiceNumber,
                    date: inv.invoiceDate,
                    amount: '${inv.currency} ${inv.total.toStringAsFixed(2)}',
                    status: inv.status,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => InvoiceDetailScreen(invoice: inv),
                      ),
                    ),
                  );
                },
              ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteClientTitle),
        content: Text(l10n.deleteClientMessage(client.name)),
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
    );

    if (confirmed == true && context.mounted) {
      context.read<ClientProvider>().deleteClient(client.id);
      Navigator.pop(context);
    }
  }
}

class _ClientHeaderCard extends StatelessWidget {
  final Client client;
  final int invoiceCount;
  final double totalBilled;
  final double outstanding;

  const _ClientHeaderCard({
    required this.client,
    required this.invoiceCount,
    required this.totalBilled,
    required this.outstanding,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            scheme.primary,
            Color.lerp(scheme.primary, Colors.black, isDark ? 0.28 : 0.16)!,
          ],
        ),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.3),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Stack(
          children: [
            Positioned(
              right: -60,
              top: -60,
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppAvatar(
                          initials: client.initials,
                          size: 56,
                          color: Colors.white.withValues(alpha: 0.9),
                          radius: 18),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              client.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              client.email,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white70, fontSize: 13),
                            ),
                            if (client.phone != null)
                              Text(
                                client.phone!,
                                style: const TextStyle(
                                    color: Colors.white70, fontSize: 13),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _HeaderStat(
                        label: l10n.clientDetailInvoices,
                        value: invoiceCount.toString(),
                      ),
                      _HeaderStat(
                        label: l10n.clientDetailTotalBilled,
                        value: '$currency ${totalBilled.toStringAsFixed(0)}',
                      ),
                      _HeaderStat(
                        label: l10n.clientDetailOutstanding,
                        value: '$currency ${outstanding.toStringAsFixed(0)}',
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

  String get currency => client.currency;
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
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(fontSize: 11, color: Colors.white70),
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
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
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

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            letterSpacing: 0.3,
          ),
    );
  }
}

class _DetailCard extends StatelessWidget {
  final List<Widget> children;
  const _DetailCard({required this.children});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        children: children.asMap().entries.map((entry) {
          final isLast = entry.key == children.length - 1;
          return Column(
            children: [
              entry.value,
              if (!isLast)
                Divider(height: 1, color: scheme.outlineVariant, indent: 16, endIndent: 16),
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
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(icon, size: 18, color: scheme.onSurfaceVariant),
          const SizedBox(width: 12),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
          ),
          const Spacer(),
          Text(
            value,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _InvoiceRow extends StatelessWidget {
  final String number;
  final DateTime date;
  final String amount;
  final InvoiceStatus status;
  final VoidCallback onTap;

  const _InvoiceRow({
    required this.number,
    required this.date,
    required this.amount,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatDate(date),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amount,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 4),
                InvoiceStatusBadge(status: status, compact: true),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan','Feb','Mar','Apr','May','Jun',
      'Jul','Aug','Sep','Oct','Nov','Dec'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}

class _EmptyInvoiceHistory extends StatelessWidget {
  final String message;
  const _EmptyInvoiceHistory({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border:
            Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: Column(
        children: [
          Icon(Icons.receipt_long_outlined,
              size: 40, color: Theme.of(context).colorScheme.onSurfaceVariant),
          const SizedBox(height: 12),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}
