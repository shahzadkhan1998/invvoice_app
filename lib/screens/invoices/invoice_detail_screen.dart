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
import '../../widgets/invoice_status_badge.dart';
import 'create_invoice_screen.dart';

class InvoiceDetailScreen extends StatelessWidget {
  final Invoice invoice;
  const InvoiceDetailScreen({Key? key, required this.invoice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final client = context
        .watch<ClientProvider>()
        .getClientById(invoice.clientId);

    return Scaffold(
      appBar: AppBar(
        title: Text(invoice.invoiceNumber),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    CreateInvoiceScreen(editInvoice: invoice),
              ),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) =>
                _handleAction(context, value),
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
                  const Icon(Icons.share_outlined,
                      color: AppColors.primaryBlue),
                  const SizedBox(width: 8),
                  Text(loc.commonSharePdf),
                ]),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(children: [
                  const Icon(Icons.delete_outline,
                      color: AppColors.dangerRed),
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ─── HEADER CARD ───
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.primaryBlue, AppColors.primaryDark],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          if (invoice.logoUrl != null && File(invoice.logoUrl!).existsSync())
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(
                                  File(invoice.logoUrl!),
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
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
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      InvoiceStatusBadge(status: invoice.status),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(loc.invoiceDetailTotalAmount,
                              style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12)),
                          Text(
                            '${invoice.currency} ${invoice.total.toStringAsFixed(2)}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _DateChip(
                        label: loc.invoiceDetailIssued,
                        date: invoice.invoiceDate,
                      ),
                      const SizedBox(width: 12),
                      _DateChip(
                        label: loc.invoiceDetailDue,
                        date: invoice.dueDate,
                        isOverdue: invoice.status ==
                            InvoiceStatus.overdue,
                      ),
                      if (invoice.paidDate != null) ...[
                        const SizedBox(width: 12),
                        _DateChip(
                          label: loc.invoiceDetailPaid,
                          date: invoice.paidDate!,
                          isPaid: true,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ─── CLIENT INFO ───
            if (client != null) ...[
              Text(loc.invoiceDetailBillTo,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray500,
                    letterSpacing: 0.5,
                  )),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(16),
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
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColors.primaryPale,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          client.initials,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryBlue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(client.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        Text(client.email,
                            style: const TextStyle(
                                fontSize: 13,
                                color: AppColors.gray500)),
                        if (client.phone != null)
                          Text(client.phone!,
                              style: const TextStyle(
                                  fontSize: 13,
                                  color: AppColors.gray500)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],

            // ─── LINE ITEMS ───
            Text(loc.invoiceDetailItems,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.gray500,
                  letterSpacing: 0.5,
                )),
            const SizedBox(height: 8),
            Container(
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
              child: Column(
                children: [
                  // Header row
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: const BoxDecoration(
                      color: AppColors.gray50,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(loc.invoiceItemDescription,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.gray500)),
                        ),
                        Text(loc.pdfQty,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.gray500)),
                        const SizedBox(width: 16),
                        Text(loc.pdfRate,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.gray500)),
                        const SizedBox(width: 16),
                        Text(loc.pdfAmount,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.gray500)),
                      ],
                    ),
                  ),
                  ...invoice.lineItems.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        border: const Border(
                          top: BorderSide(
                              color: AppColors.gray100),
                        ),
                        color: index.isEven
                            ? Colors.transparent
                            : AppColors.gray50,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              item.description,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            item.quantity % 1 == 0
                                ? item.quantity
                                    .toInt()
                                    .toString()
                                : item.quantity
                                    .toStringAsFixed(2),
                            style: const TextStyle(
                                fontSize: 13,
                                color: AppColors.gray600),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            item.rate.toStringAsFixed(2),
                            style: const TextStyle(
                                fontSize: 13,
                                color: AppColors.gray600),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            item.amount.toStringAsFixed(2),
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ─── TOTALS ───
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryPale,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _TotalRow(
                      label: loc.invoiceSubtotal,
                      value:
                          '${invoice.currency} ${invoice.subtotal.toStringAsFixed(2)}'),
                  const SizedBox(height: 6),
                  if (invoice.taxAmount > 0)
                    _TotalRow(
                        label:
                            loc.invoiceTax(invoice.taxRate.toStringAsFixed(0)),
                        value:
                            '${invoice.currency} ${invoice.taxAmount.toStringAsFixed(2)}'),
                  const Divider(
                      color: AppColors.primaryBlue, height: 20),
                  _TotalRow(
                    label: loc.invoiceTotal,
                    value:
                        '${invoice.currency} ${invoice.total.toStringAsFixed(2)}',
                    isTotal: true,
                  ),
                ],
              ),
            ),

            // Notes
            if (invoice.notes != null &&
                invoice.notes!.isNotEmpty) ...[
              const SizedBox(height: 20),
              Text(loc.invoiceDetailNotes,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.gray500,
                      letterSpacing: 0.5)),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.gray50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(invoice.notes!,
                    style: const TextStyle(
                        fontSize: 14, color: AppColors.gray600)),
              ),
            ],

            // Signature
            if (invoice.signatureUrl != null && File(invoice.signatureUrl!).existsSync()) ...[
              const SizedBox(height: 20),
              Text(loc.invoiceDetailSignature,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.gray500,
                      letterSpacing: 0.5)),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.gray50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.gray200),
                ),
                child: Image.file(
                  File(invoice.signatureUrl!),
                  height: 100,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ],

            const SizedBox(height: 32),

            // ─── ACTION BUTTONS ───
            if (invoice.status != InvoiceStatus.paid)
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context
                        .read<InvoiceProvider>()
                        .markAsPaid(invoice.id);
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(loc.invoiceDetailMarkedPaidSnackbar),
                        backgroundColor: AppColors.successGreen,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  icon: const Icon(Icons.check_circle_outline),
                  label: Text(loc.invoiceDetailMarkAsPaid,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.successGreen,
                  ),
                ),
              ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () =>
                        _generatePdf(context, share: false),
                    icon: const Icon(Icons.picture_as_pdf_outlined,
                        size: 18),
                    label: Text(loc.commonExportPdf),
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(0, 50)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () =>
                        _generatePdf(context, share: true),
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

  Future<void> _generatePdf(BuildContext context,
      {required bool share}) async {
    final loc = AppLocalizations.of(context)!;
    final prefs = await SharedPreferences.getInstance();
    final client =
        context.read<ClientProvider>().getClientById(invoice.clientId);
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
        behavior: SnackBarBehavior.floating,
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
            behavior: SnackBarBehavior.floating,
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
      Navigator.pop(context);
    }
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
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  TextStyle(fontSize: 10, color: color, fontWeight: FontWeight.w600)),
          Text(
            '${date.day} ${months[date.month - 1]}',
            style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.bold),
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
      {required this.label,
      required this.value,
      this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: TextStyle(
              fontSize: isTotal ? 15 : 13,
              color: isTotal
                  ? AppColors.primaryBlue
                  : AppColors.gray600,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            )),
        Text(value,
            style: TextStyle(
              fontSize: isTotal ? 18 : 13,
              color: isTotal ? AppColors.primaryBlue : null,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.w500,
            )),
      ],
    );
  }
}
