import 'dart:io';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../models/invoice.dart';
import '../models/client.dart';

class PdfService {
  static Future<File> generateInvoicePdf({
    required Invoice invoice,
    required Client client,
    required AppLocalizations l10n,
    required String businessName,
    required String businessEmail,
    String? businessPhone,
    String? businessAddress,
  }) async {
    final pdf = pw.Document();
    final primaryColor = PdfColor.fromHex('#2563EB');
    final lightGray = PdfColor.fromHex('#F3F4F6');
    final textGray = PdfColor.fromHex('#6B7280');

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(40),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            // ─── HEADER ───
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // Business info
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                      padding: const pw.EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: pw.BoxDecoration(
                        color: invoice.logoUrl == null ? primaryColor : null,
                        borderRadius: pw.BorderRadius.circular(6),
                      ),
                      child: invoice.logoUrl != null && File(invoice.logoUrl!).existsSync()
                          ? pw.Image(
                              pw.MemoryImage(File(invoice.logoUrl!).readAsBytesSync()),
                              height: 50,
                              fit: pw.BoxFit.contain,
                            )
                          : pw.Text(
                              businessName,
                              style: pw.TextStyle(
                                fontSize: 16,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.white,
                              ),
                            ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(businessEmail,
                        style: pw.TextStyle(fontSize: 10, color: textGray)),
                    if (businessPhone != null)
                      pw.Text(businessPhone,
                          style: pw.TextStyle(fontSize: 10, color: textGray)),
                    if (businessAddress != null)
                      pw.Text(businessAddress,
                          style: pw.TextStyle(fontSize: 10, color: textGray)),
                  ],
                ),
                // Invoice details
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      l10n.pdfInvoice,
                      style: pw.TextStyle(
                        fontSize: 32,
                        fontWeight: pw.FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    pw.SizedBox(height: 8),
                    _infoRow(l10n.pdfInvoiceNumber, invoice.invoiceNumber, textGray),
                    pw.SizedBox(height: 4),
                    _infoRow(l10n.pdfDate,
                        _formatDate(invoice.invoiceDate), textGray),
                    pw.SizedBox(height: 4),
                    _infoRow(l10n.pdfDueDate,
                        _formatDate(invoice.dueDate), textGray),
                    pw.SizedBox(height: 8),
                    pw.Container(
                      padding: const pw.EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: pw.BoxDecoration(
                        color: _statusColor(invoice.status),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Text(
                        invoice.status.toString().split('.').last.toUpperCase(),
                        style: pw.TextStyle(
                          fontSize: 10,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            pw.SizedBox(height: 30),
            pw.Divider(color: PdfColor.fromHex('#E5E7EB')),
            pw.SizedBox(height: 20),

            // ─── BILL TO ───
            pw.Container(
              padding: const pw.EdgeInsets.all(16),
              decoration: pw.BoxDecoration(
                color: lightGray,
                borderRadius: pw.BorderRadius.circular(8),
              ),
              child: pw.Row(
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        l10n.pdfBillTo,
                        style: pw.TextStyle(
                          fontSize: 10,
                          fontWeight: pw.FontWeight.bold,
                          color: textGray,
                        ),
                      ),
                      pw.SizedBox(height: 6),
                      pw.Text(
                        client.name,
                        style: pw.TextStyle(
                          fontSize: 14,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(client.email,
                          style: pw.TextStyle(fontSize: 10, color: textGray)),
                      if (client.phone != null)
                        pw.Text(client.phone!,
                            style: pw.TextStyle(fontSize: 10, color: textGray)),
                      if (client.address != null)
                        pw.Text(client.address!,
                            style: pw.TextStyle(fontSize: 10, color: textGray)),
                    ],
                  ),
                ],
              ),
            ),

            pw.SizedBox(height: 24),

            // ─── LINE ITEMS TABLE ───
            pw.Table(
              columnWidths: {
                0: const pw.FlexColumnWidth(4),
                1: const pw.FixedColumnWidth(50),
                2: const pw.FixedColumnWidth(80),
                3: const pw.FixedColumnWidth(80),
              },
              children: [
                // Table header
                pw.TableRow(
                  decoration: pw.BoxDecoration(color: primaryColor),
                  children: [
                    _tableHeader(l10n.pdfDescription),
                    _tableHeader(l10n.pdfQty, align: pw.TextAlign.center),
                    _tableHeader(l10n.pdfRate, align: pw.TextAlign.right),
                    _tableHeader(l10n.pdfAmount, align: pw.TextAlign.right),
                  ],
                ),
                // Items
                ...invoice.lineItems.asMap().entries.map((entry) {
                  final i = entry.key;
                  final item = entry.value;
                  return pw.TableRow(
                    decoration: pw.BoxDecoration(
                      color: i.isEven ? PdfColors.white : lightGray,
                    ),
                    children: [
                      _tableCell(item.description),
                      _tableCell(
                        item.quantity % 1 == 0
                            ? item.quantity.toInt().toString()
                            : item.quantity.toStringAsFixed(2),
                        align: pw.TextAlign.center,
                      ),
                      _tableCell(
                        _formatCurrency(item.rate, invoice.currency),
                        align: pw.TextAlign.right,
                      ),
                      _tableCell(
                        _formatCurrency(item.amount, invoice.currency),
                        align: pw.TextAlign.right,
                      ),
                    ],
                  );
                }),
              ],
            ),

            pw.SizedBox(height: 20),

            // ─── TOTALS ───
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.end,
              children: [
                pw.Container(
                  width: 220,
                  child: pw.Column(
                    children: [
                      _totalRow(
                        l10n.pdfSubtotal,
                        _formatCurrency(invoice.subtotal, invoice.currency),
                        textGray,
                      ),
                      if (invoice.taxAmount > 0) ...[
                        pw.SizedBox(height: 4),
                        _totalRow(
                          l10n.pdfTax(invoice.taxRate.toStringAsFixed(0)),
                          _formatCurrency(invoice.taxAmount, invoice.currency),
                          textGray,
                        ),
                      ],
                      pw.SizedBox(height: 8),
                      pw.Divider(
                          thickness: 2, color: primaryColor),
                      pw.SizedBox(height: 8),
                      _totalRow(
                        l10n.pdfTotal,
                        _formatCurrency(invoice.total, invoice.currency),
                        primaryColor,
                        isTotal: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            pw.Spacer(),

            // ─── FOOTER ───
            if (invoice.signatureUrl != null && File(invoice.signatureUrl!).existsSync()) ...[
              pw.SizedBox(height: 20),
              pw.Text(l10n.pdfSignature,
                  style: pw.TextStyle(
                      fontSize: 10, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 8),
              pw.Image(
                pw.MemoryImage(File(invoice.signatureUrl!).readAsBytesSync()),
                height: 60,
                alignment: pw.Alignment.centerLeft,
              ),
              pw.SizedBox(height: 20),
            ],
            
            if (invoice.notes != null && invoice.notes!.isNotEmpty) ...[
              pw.Divider(color: PdfColor.fromHex('#E5E7EB')),
              pw.SizedBox(height: 10),
              pw.Text(l10n.pdfNotes,
                  style: pw.TextStyle(
                      fontSize: 10, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 4),
              pw.Text(invoice.notes!,
                  style: pw.TextStyle(fontSize: 10, color: textGray)),
            ],
            if (invoice.paymentTerms != null &&
                invoice.paymentTerms!.isNotEmpty) ...[
              pw.SizedBox(height: 8),
              pw.Text(l10n.pdfPaymentTerms,
                  style: pw.TextStyle(
                      fontSize: 10, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 4),
              pw.Text(invoice.paymentTerms!,
                  style: pw.TextStyle(fontSize: 10, color: textGray)),
            ],
            pw.SizedBox(height: 16),
            pw.Center(
              child: pw.Text(
                l10n.pdfThankYou,
                style: pw.TextStyle(
                  fontSize: 12,
                  fontStyle: pw.FontStyle.italic,
                  color: textGray,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    final directory = await getApplicationDocumentsDirectory();
    final file = File(
        '${directory.path}/${invoice.invoiceNumber.replaceAll('/', '-')}.pdf');
    await file.writeAsBytes(await pdf.save());
    return file;
  }

  static pw.Widget _infoRow(String label, String value, PdfColor color) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.end,
      children: [
        pw.Text(label,
            style: pw.TextStyle(fontSize: 10, color: color)),
        pw.SizedBox(width: 6),
        pw.Text(value,
            style:
                pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
      ],
    );
  }

  static pw.Widget _tableHeader(String text,
      {pw.TextAlign align = pw.TextAlign.left}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: pw.Text(
        text,
        textAlign: align,
        style: pw.TextStyle(
          fontSize: 10,
          fontWeight: pw.FontWeight.bold,
          color: PdfColors.white,
        ),
      ),
    );
  }

  static pw.Widget _tableCell(String text,
      {pw.TextAlign align = pw.TextAlign.left}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: pw.Text(text,
          textAlign: align,
          style: pw.TextStyle(fontSize: 10)),
    );
  }

  static pw.Widget _totalRow(String label, String value, PdfColor color,
      {bool isTotal = false}) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Text(
          label,
          style: pw.TextStyle(
            fontSize: isTotal ? 13 : 10,
            fontWeight:
                isTotal ? pw.FontWeight.bold : pw.FontWeight.normal,
            color: color,
          ),
        ),
        pw.Text(
          value,
          style: pw.TextStyle(
            fontSize: isTotal ? 13 : 10,
            fontWeight:
                isTotal ? pw.FontWeight.bold : pw.FontWeight.normal,
            color: color,
          ),
        ),
      ],
    );
  }

  static PdfColor _statusColor(InvoiceStatus status) {
    switch (status) {
      case InvoiceStatus.paid:
        return PdfColor.fromHex('#10B981');
      case InvoiceStatus.overdue:
        return PdfColor.fromHex('#EF4444');
      case InvoiceStatus.sent:
        return PdfColor.fromHex('#F59E0B');
      case InvoiceStatus.draft:
        return PdfColor.fromHex('#6B7280');
      default:
        return PdfColor.fromHex('#6B7280');
    }
  }

  static String _formatDate(DateTime date) {
    return DateFormat('MMM dd, yyyy').format(date);
  }

  static String _formatCurrency(double amount, String currency) {
    return '$currency ${amount.toStringAsFixed(2)}';
  }

  // Print or share PDF
  static Future<void> printPdf(File pdfFile) async {
    await Printing.layoutPdf(
      onLayout: (format) async => pdfFile.readAsBytesSync(),
    );
  }

  // Share PDF
  static Future<void> sharePdf(File pdfFile) async {
    await Printing.sharePdf(
      bytes: await pdfFile.readAsBytes(),
      filename: pdfFile.path.split('/').last,
    );
  }
}
