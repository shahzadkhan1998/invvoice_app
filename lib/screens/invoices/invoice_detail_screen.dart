import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../models/invoice.dart';
import '../../providers/invoice_provider.dart';
import '../../providers/client_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../services/pdf_service.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/invoice_status_badge.dart';
import 'create_invoice_screen.dart';

class InvoiceDetailScreen extends StatelessWidget {
  final Invoice invoice;
  const InvoiceDetailScreen({Key? key, required this.invoice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final client = context.watch<ClientProvider>().getClientById(invoice.clientId);

    return Scaffold(
      appBar: AppBar(
        title: Text(invoice.invoiceNumber),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CreateInvoiceScreen(editInvoice: invoice),
              ),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) => _handleAction(context, value),
            itemBuilder: (_) => [
              if (invoice.status != InvoiceStatus.paid)
                PopupMenuItem(
                  value: 'paid',
                  child: Row(children: [
                    const Icon(Icons.check_circle_outline,
                        color: AppColors.successGreen),
                    const SizedBox(width: 8),
                    Text(loc.invoiceDetailMarkAsPaid),
                  ]),
                ),
              PopupMenuItem(
                value: 'pdf',
                child: Row(children: [
                  const Icon(Icons.picture_as_pdf_outlined,
                      color: AppColors.primaryBlue),
                  const SizedBox(width: 8),
                  Text(loc.commonExportPdf),
                ]),
              ),
              PopupMenuItem(
                value: 'share',
                child: Row(children: [
                  const Icon(Icons.share_outlined, color: AppColors.primaryBlue),
                  const SizedBox(width: 8),
                  Text(loc.commonSharePdf),
                ]),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(children: [
                  const Icon(Icons.delete_outline, color: AppColors.dangerRed),
                  const SizedBox(width: 8),
                  Text(loc.commonDelete,
                      style: const TextStyle(color: AppColors.dangerRed)),
                ]),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeaderCard(invoice: invoice),
            const SizedBox(height: 20),

            if (client != null) ...[
              _sectionTitle(context, loc.invoiceDetailBillTo),
              const SizedBox(height: 10),
              _ClientCard(clientName: client.name, clientEmail: client.email, clientPhone: client.phone),
              const SizedBox(height: 20),
            ],

            _sectionTitle(context, loc.invoiceDetailItems),
            const SizedBox(height: 10),
            _ItemsTable(lineItems: invoice.lineItems),
            const SizedBox(height: 20),

            _TotalsCard(invoice: invoice),
            const SizedBox(height: 20),

            if (invoice.notes != null && invoice.notes!.isNotEmpty) ...[
              _sectionTitle(context, loc.invoiceDetailNotes),
              const SizedBox(height: 10),
              _InfoCard(child: Text(invoice.notes!)),
              const SizedBox(height: 20),
            ],

            if (invoice.signatureUrl != null &&
                File(invoice.signatureUrl!).existsSync()) ...[
              _sectionTitle(context, loc.invoiceDetailSignature),
              const SizedBox(height: 10),
              _InfoCard(
                child: Image.file(
                  File(invoice.signatureUrl!),
                  height: 100,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                ),
              ),
              const SizedBox(height: 20),
            ],

            if (invoice.status != InvoiceStatus.paid) ...[
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton.icon(
                  onPressed: () {
                    context.read<InvoiceProvider>().markAsPaid(invoice.id);
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(loc.invoiceDetailMarkedPaidSnackbar),
                        backgroundColor: AppColors.successGreen,
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.successGreen,
                  ),
                  icon: const Icon(Icons.check_circle_outline),
                  label: Text(
                    loc.invoiceDetailMarkAsPaid,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],

            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _generatePdf(context, share: false),
                    icon: const Icon(Icons.picture_as_pdf_outlined, size: 18),
                    label: Text(loc.commonExportPdf),
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(0, 50)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _generatePdf(context, share: true),
                    icon: const Icon(Icons.share_outlined, size: 18),
                    label: Text(loc.commonShare),
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(0, 50)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            letterSpacing: 0.3,
          ),
    );
  }

  Future<void> _generatePdf(BuildContext context,
      {required bool share}) async {
    final loc = AppLocalizations.of(context)!;
    final prefs = await SharedPreferences.getInstance();
    final client = context.read<ClientProvider>().getClientById(invoice.clientId);
    if (client == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(children: [
          const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                  strokeWidth: 2, color: Colors.white)),
          const SizedBox(width: 12),
          Text(loc.commonGeneratingPdf),
        ]),
        duration: const Duration(seconds: 2),
      ),
    );

    try {
      final l10n = AppLocalizations.of(context)!;
      final file = await PdfService.generateInvoicePdf(
        l10n: l10n,
        invoice: invoice,
        client: client,
        businessName: prefs.getString('business_name') ?? 'My Business',
        businessEmail: prefs.getString('business_email') ?? '',
        businessPhone: prefs.getString('business_phone'),
        businessAddress: prefs.getString('business_address'),
      );

      if (share) {
        await PdfService.sharePdf(file);
      } else {
        await PdfService.printPdf(file);
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(loc.invoiceDetailPdfFailed),
            backgroundColor: AppColors.dangerRed,
          ),
        );
      }
    }
  }

  void _handleAction(BuildContext context, String value) {
    switch (value) {
      case 'paid':
        context.read<InvoiceProvider>().markAsPaid(invoice.id);
        Navigator.pop(context);
        break;
      case 'pdf':
        _generatePdf(context, share: false);
        break;
      case 'share':
        _generatePdf(context, share: true);
        break;
      case 'delete':
        _confirmDelete(context);
        break;
    }
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
      Navigator.pop(context);
    }
  }
}

class _HeaderCard extends StatelessWidget {
  final Invoice invoice;
  const _HeaderCard({required this.invoice});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
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
              right: -50,
              top: -50,
              child: Container(
                width: 160,
                height: 160,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (invoice.logoUrl != null &&
                              File(invoice.logoUrl!).existsSync()) ...[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(invoice.logoUrl!),
                                width: 48,
                                height: 48,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],
                          Text(
                            loc.invoiceDetailTitle,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            invoice.invoiceNumber,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      InvoiceStatusBadge(status: invoice.status),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    loc.invoiceDetailTotalAmount,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${invoice.currency} ${invoice.total.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _DateChip(
                        label: loc.invoiceDetailIssued,
                        date: invoice.invoiceDate,
                      ),
                      _DateChip(
                        label: loc.invoiceDetailDue,
                        date: invoice.dueDate,
                        isOverdue: invoice.status == InvoiceStatus.overdue,
                      ),
                      if (invoice.paidDate != null)
                        _DateChip(
                          label: loc.invoiceDetailPaid,
                          date: invoice.paidDate!,
                          isPaid: true,
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
}

class _DateChip extends StatelessWidget {
  final String label;
  final DateTime date;
  final bool isOverdue;
  final bool isPaid;

  const _DateChip({
    required this.label,
    required this.date,
    this.isOverdue = false,
    this.isPaid = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isPaid
        ? AppColors.successGreen
        : isOverdue
            ? AppColors.dangerRed
            : Colors.white70;
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 10, color: color, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            '${date.day} ${months[date.month - 1]} ${date.year}',
            style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class _ClientCard extends StatelessWidget {
  final String clientName;
  final String clientEmail;
  final String? clientPhone;

  const _ClientCard({
    required this.clientName,
    required this.clientEmail,
    this.clientPhone,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Row(
        children: [
          AppAvatar(initials: clientName.isNotEmpty ? clientName[0] : '?', size: 48),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(clientName,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700)),
                Text(clientEmail,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        )),
                if (clientPhone != null)
                  Text(clientPhone!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemsTable extends StatelessWidget {
  final List<LineItem> lineItems;
  const _ItemsTable({required this.lineItems});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(loc.invoiceItemDescription,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
                SizedBox(
                  width: 36,
                  child: Text(loc.pdfQty,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: 56,
                  child: Text(loc.pdfRate,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: 64,
                  child: Text(loc.pdfAmount,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: scheme.outlineVariant),
          ...lineItems.asMap().entries.map((entry) {
            final item = entry.value;
            final isLast = entry.key == lineItems.length - 1;
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: isLast
                    ? null
                    : Border(
                        bottom: BorderSide(color: scheme.outlineVariant)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      item.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 36,
                    child: Text(
                      _qty(item.quantity),
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 56,
                    child: Text(
                      item.rate.toStringAsFixed(2),
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 64,
                    child: Text(
                      item.amount.toStringAsFixed(2),
                      textAlign: TextAlign.right,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  String _qty(double quantity) {
    return quantity % 1 == 0 ? quantity.toInt().toString() : quantity.toStringAsFixed(2);
  }
}

class _TotalsCard extends StatelessWidget {
  final Invoice invoice;
  const _TotalsCard({required this.invoice});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: scheme.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.primary.withValues(alpha: 0.18)),
      ),
      child: Column(
        children: [
          _TotalRow(
              label: loc.invoiceSubtotal,
              value: '${invoice.currency} ${invoice.subtotal.toStringAsFixed(2)}'),
          const SizedBox(height: 8),
          if (invoice.taxAmount > 0)
            _TotalRow(
                label: loc.invoiceTax(invoice.taxRate.toStringAsFixed(0)),
                value:
                    '${invoice.currency} ${invoice.taxAmount.toStringAsFixed(2)}'),
          Divider(color: scheme.primary, height: 24),
          _TotalRow(
            label: loc.invoiceTotal,
            value: '${invoice.currency} ${invoice.total.toStringAsFixed(2)}',
            isTotal: true,
          ),
        ],
      ),
    );
  }
}

class _TotalRow extends StatelessWidget {
  final String label, value;
  final bool isTotal;
  const _TotalRow(
      {required this.label, required this.value, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 15 : 13,
            color: isTotal ? scheme.primary : scheme.onSurfaceVariant,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 18 : 13,
            color: isTotal ? scheme.primary : null,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final Widget child;
  const _InfoCard({required this.child});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
              height: 1.5,
            ) ??
            const TextStyle(),
        child: child,
      ),
    );
  }
}
