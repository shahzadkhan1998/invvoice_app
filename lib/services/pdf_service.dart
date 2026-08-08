import 'dart:io';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../models/invoice.dart';
import '../models/estimate.dart';
import '../models/client.dart';

/// Available PDF layout styles. All are free to use; the Pro plan only
/// removes the watermark.
enum PdfTemplate { modern, minimal, classic }

class PdfService {
  static const String watermarkText = 'InvoiceFlow';

  static const String _fontBase = 'assets/fonts/NotoSans-Regular.ttf';
  static const String _fontBold = 'assets/fonts/NotoSans-Bold.ttf';
  static const String _fontItalic = 'assets/fonts/NotoSans-Italic.ttf';
  static const String _fontBoldItalic = 'assets/fonts/NotoSans-BoldItalic.ttf';
  static const String _arabicFontAsset = 'assets/fonts/NotoSansArabic.ttf';
  static const String _cjkFontAsset = 'assets/fonts/NotoSansSC.ttf';
  static final Map<String, pw.Font> _fontCache = {};

  /// Loads a TTF font once and caches it for subsequent PDF generations.
  static Future<pw.Font> _loadFont(String assetPath) async {
    final cached = _fontCache[assetPath];
    if (cached != null) return cached;
    final data = await rootBundle.load(assetPath);
    final font = pw.Font.ttf(data);
    _fontCache[assetPath] = font;
    return font;
  }

  static PdfTemplate templateFromString(String? value) {
    switch (value) {
      case 'minimal':
        return PdfTemplate.minimal;
      case 'classic':
        return PdfTemplate.classic;
      default:
        return PdfTemplate.modern;
    }
  }

  static Future<File> generateEstimatePdf({
    required Estimate estimate,
    required Client client,
    required AppLocalizations l10n,
    required String businessName,
    required String businessEmail,
    String? businessPhone,
    String? businessAddress,
    String? businessTaxId,
    String? taxIdLabel,
    String? taxLabel,
    String? accentHex,
    PdfTemplate template = PdfTemplate.modern,
    bool watermark = false,
  }) async {
    final data = _DocData(
      docTitle: l10n.pdfEstimate,
      numberLabel: l10n.pdfEstimateNumber,
      number: estimate.estimateNumber,
      dateLabel: l10n.pdfDate,
      date: _formatDate(estimate.issueDate),
      dueLabel: l10n.pdfValidUntil,
      due: _formatDate(estimate.expiryDate),
      statusLabel: estimate.status.toString().split('.').last.toUpperCase(),
      statusColor: _estimateStatusColor(estimate.status),
      logoPath: null,
      businessName: businessName,
      businessTaxId: businessTaxId,
      taxIdLabel: taxIdLabel,
      businessEmail: businessEmail,
      businessPhone: businessPhone,
      businessAddress: businessAddress,
      clientName: client.name,
      clientEmail: client.email,
      clientPhone: client.phone,
      clientAddress: client.address,
      clientVatText: null,
      items: estimate.lineItems,
      currency: estimate.currency,
      subtotal: estimate.subtotal,
      taxLabel: taxLabel != null
          ? '$taxLabel (${estimate.taxRate.toStringAsFixed(0)}%)'
          : l10n.pdfTax(estimate.taxRate.toStringAsFixed(0)),
      taxAmount: estimate.taxAmount,
      total: estimate.total,
      paymentLink: null,
      paymentLinkText: null,
      notes: estimate.notes,
      paymentTerms: estimate.paymentTerms,
      signaturePath: null,
      signatureLabel: null,
      thankYou: l10n.pdfThankYou,
    );

    return _writePdf(
      data: data,
      l10n: l10n,
      accentHex: accentHex,
      template: template,
      watermark: watermark,
      fileName: estimate.estimateNumber,
    );
  }

  static Future<File> generateInvoicePdf({
    required Invoice invoice,
    required Client client,
    required AppLocalizations l10n,
    required String businessName,
    required String businessEmail,
    String? businessPhone,
    String? businessAddress,
    String? businessTaxId,
    String? taxIdLabel,
    String? taxLabel,
    String? accentHex,
    String? paymentLink,
    PdfTemplate template = PdfTemplate.modern,
    bool watermark = false,
  }) async {
    final data = _DocData(
      docTitle: l10n.pdfInvoice,
      numberLabel: l10n.pdfInvoiceNumber,
      number: invoice.invoiceNumber,
      dateLabel: l10n.pdfDate,
      date: _formatDate(invoice.invoiceDate),
      dueLabel: l10n.pdfDueDate,
      due: _formatDate(invoice.dueDate),
      statusLabel: invoice.status.toString().split('.').last.toUpperCase(),
      statusColor: _statusColor(invoice.status),
      logoPath: invoice.logoUrl,
      businessName: businessName,
      businessTaxId: businessTaxId,
      taxIdLabel: taxIdLabel,
      businessEmail: businessEmail,
      businessPhone: businessPhone,
      businessAddress: businessAddress,
      clientName: client.name,
      clientEmail: client.email,
      clientPhone: client.phone,
      clientAddress: client.address,
      clientVatText:
          (client.vatNumber != null && client.vatNumber!.isNotEmpty)
              ? taxIdLabel != null
                  ? '$taxIdLabel: ${client.vatNumber}'
                  : '${l10n.clientDetailVatNumber}: ${client.vatNumber}'
              : null,
      items: invoice.lineItems,
      currency: invoice.currency,
      subtotal: invoice.subtotal,
      taxLabel: taxLabel != null
          ? '$taxLabel (${invoice.taxRate.toStringAsFixed(0)}%)'
          : l10n.pdfTax(invoice.taxRate.toStringAsFixed(0)),
      taxAmount: invoice.taxAmount,
      total: invoice.total,
      paymentLink: paymentLink,
      paymentLinkText: l10n.pdfPayOnline,
      notes: invoice.notes,
      paymentTerms: invoice.paymentTerms,
      signaturePath: invoice.signatureUrl,
      signatureLabel: l10n.pdfSignature,
      thankYou: l10n.pdfThankYou,
    );

    return _writePdf(
      data: data,
      l10n: l10n,
      accentHex: accentHex,
      template: template,
      watermark: watermark,
      fileName: invoice.invoiceNumber,
    );
  }

  // ─── Page builder ────────────────────────────────────────────────────────

  static Future<File> _writePdf({
    required _DocData data,
    required AppLocalizations l10n,
    required String? accentHex,
    required PdfTemplate template,
    required bool watermark,
    required String fileName,
  }) async {
    final pdf = pw.Document(
      theme: pw.ThemeData.withFont(
        base: await _loadFont(_fontBase),
        bold: await _loadFont(_fontBold),
        italic: await _loadFont(_fontItalic),
        boldItalic: await _loadFont(_fontBoldItalic),
        fontFallback: [
          await _loadFont(_arabicFontAsset),
          await _loadFont(_cjkFontAsset),
        ],
      ),
    );
    final primary = PdfColor.fromHex(accentHex ?? '#2563EB');

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(40),
        build: (_) => _buildPage(data, l10n, primary, template, watermark),
      ),
    );

    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/${fileName.replaceAll('/', '-')}.pdf');
    await file.writeAsBytes(await pdf.save());
    return file;
  }

  static pw.Widget _buildPage(
    _DocData d,
    AppLocalizations l10n,
    PdfColor primary,
    PdfTemplate template,
    bool watermark,
  ) {
    final textGray = PdfColor.fromHex('#6B7280');

    return pw.Stack(
      fit: pw.StackFit.expand,
      children: [
        if (watermark) _watermark(),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _buildHeader(d, primary, textGray, template),
            pw.SizedBox(height: 24),
            _buildBillTo(d, l10n, primary, textGray, template),
            pw.SizedBox(height: 24),
            _buildItemsTable(d, l10n, primary, textGray, template),
            pw.SizedBox(height: 20),
            _buildTotals(d, l10n, primary, textGray, template),
            pw.Spacer(),
            _buildFooter(d, l10n, primary, textGray, template),
          ],
        ),
      ],
    );
  }

  static pw.Widget _watermark() {
    return pw.Positioned.fill(
      child: pw.Center(
        child: pw.Transform.rotate(
          angle: -0.5,
          child: pw.Opacity(
            opacity: 0.06,
            child: pw.Text(
              watermarkText,
              style: pw.TextStyle(
                fontSize: 72,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.grey800,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ─── Header ──────────────────────────────────────────────────────────────

  static pw.Widget _buildHeader(
    _DocData d,
    PdfColor primary,
    PdfColor textGray,
    PdfTemplate template,
  ) {
    final numberAndDates = <pw.Widget>[
      _infoRow(d.numberLabel, d.number, textGray),
      pw.SizedBox(height: 4),
      _infoRow(d.dateLabel, d.date, textGray),
      if (d.due != null) ...[
        pw.SizedBox(height: 4),
        _infoRow(d.dueLabel!, d.due!, textGray),
      ],
    ];

    switch (template) {
      case PdfTemplate.minimal:
        return pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _businessBlock(d, textGray,
                name: _businessName(d, PdfColors.grey900)),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.Text(
                  d.docTitle,
                  style: pw.TextStyle(
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                    letterSpacing: 5,
                    color: PdfColors.grey900,
                  ),
                ),
                pw.SizedBox(height: 10),
                ...numberAndDates,
                pw.SizedBox(height: 8),
                pw.Text(
                  d.statusLabel,
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                    color: d.statusColor,
                  ),
                ),
              ],
            ),
          ],
        );
      case PdfTemplate.classic:
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Text(
              d.docTitle,
              style: pw.TextStyle(
                fontSize: 28,
                fontWeight: pw.FontWeight.bold,
                letterSpacing: 4,
              ),
            ),
            pw.SizedBox(height: 6),
            pw.Container(height: 2, color: PdfColors.grey900),
            pw.Container(height: 0.7, color: PdfColors.grey900),
            pw.SizedBox(height: 14),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                _businessBlock(d, textGray,
                    name: _businessName(d, PdfColors.grey900)),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    ...numberAndDates,
                    pw.SizedBox(height: 8),
                    pw.Container(
                      padding: const pw.EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: pw.BoxDecoration(
                        color: d.statusColor,
                        borderRadius: pw.BorderRadius.circular(2),
                      ),
                      child: pw.Text(
                        d.statusLabel,
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
          ],
        );
      case PdfTemplate.modern:
        return pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            _businessBlock(d, textGray,
                name: _businessName(d, primary, inContainer: true)),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.Text(
                  d.docTitle,
                  style: pw.TextStyle(
                    fontSize: 32,
                    fontWeight: pw.FontWeight.bold,
                    color: primary,
                  ),
                ),
                pw.SizedBox(height: 8),
                ...numberAndDates,
                pw.SizedBox(height: 8),
                pw.Container(
                  padding: const pw.EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  decoration: pw.BoxDecoration(
                    color: d.statusColor,
                    borderRadius: pw.BorderRadius.circular(4),
                  ),
                  child: pw.Text(
                    d.statusLabel,
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
        );
    }
  }

  static pw.Widget _businessName(_DocData d, PdfColor color,
      {bool inContainer = false}) {
    if (d.logoPath != null && File(d.logoPath!).existsSync()) {
      return pw.Image(
        pw.MemoryImage(File(d.logoPath!).readAsBytesSync()),
        height: 50,
        fit: pw.BoxFit.contain,
      );
    }
    final text = pw.Text(
      d.businessName,
      style: pw.TextStyle(
        fontSize: 16,
        fontWeight: pw.FontWeight.bold,
        color: color,
      ),
    );
    if (!inContainer) return text;
    return pw.Container(
      padding: const pw.EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: pw.BoxDecoration(
        color: color,
        borderRadius: pw.BorderRadius.circular(6),
      ),
      child: pw.Text(
        d.businessName,
        style: pw.TextStyle(
          fontSize: 16,
          fontWeight: pw.FontWeight.bold,
          color: PdfColors.white,
        ),
      ),
    );
  }

  static pw.Widget _businessBlock(
    _DocData d,
    PdfColor textGray, {
    required pw.Widget name,
  }) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        name,
        if (d.businessTaxId != null && d.businessTaxId!.isNotEmpty) ...[
          pw.SizedBox(height: 6),
          pw.Text(
            d.taxIdLabel != null
                ? '${d.taxIdLabel}: ${d.businessTaxId}'
                : d.businessTaxId!,
            style: pw.TextStyle(
              fontSize: 10,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ],
        pw.SizedBox(height: 10),
        pw.Text(d.businessEmail,
            style: pw.TextStyle(fontSize: 10, color: textGray)),
        if (d.businessPhone != null)
          pw.Text(d.businessPhone!,
              style: pw.TextStyle(fontSize: 10, color: textGray)),
        if (d.businessAddress != null)
          pw.Text(d.businessAddress!,
              style: pw.TextStyle(fontSize: 10, color: textGray)),
      ],
    );
  }

  // ─── Bill to ─────────────────────────────────────────────────────────────

  static pw.Widget _buildBillTo(
    _DocData d,
    AppLocalizations l10n,
    PdfColor primary,
    PdfColor textGray,
    PdfTemplate template,
  ) {
    final lightGray = PdfColor.fromHex('#F3F4F6');
    final content = pw.Column(
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
          d.clientName,
          style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
        ),
        pw.Text(d.clientEmail,
            style: pw.TextStyle(fontSize: 10, color: textGray)),
        if (d.clientPhone != null)
          pw.Text(d.clientPhone!,
              style: pw.TextStyle(fontSize: 10, color: textGray)),
        if (d.clientAddress != null)
          pw.Text(d.clientAddress!,
              style: pw.TextStyle(fontSize: 10, color: textGray)),
        if (d.clientVatText != null)
          pw.Text(d.clientVatText!,
              style: pw.TextStyle(fontSize: 10, color: textGray)),
      ],
    );

    switch (template) {
      case PdfTemplate.minimal:
        return pw.Container(
          padding: const pw.EdgeInsets.only(bottom: 12),
          decoration: pw.BoxDecoration(
            border: pw.Border(
              bottom: pw.BorderSide(color: PdfColors.grey600),
            ),
          ),
          child: content,
        );
      case PdfTemplate.classic:
        return pw.Container(
          padding: const pw.EdgeInsets.all(12),
          decoration: pw.BoxDecoration(
            border: pw.Border.all(color: PdfColors.grey600, width: 1),
          ),
          child: content,
        );
      case PdfTemplate.modern:
        return pw.Container(
          padding: const pw.EdgeInsets.all(16),
          decoration: pw.BoxDecoration(
            color: lightGray,
            borderRadius: pw.BorderRadius.circular(8),
          ),
          child: content,
        );
    }
  }

  // ─── Items table ─────────────────────────────────────────────────────────

  static pw.Widget _buildItemsTable(
    _DocData d,
    AppLocalizations l10n,
    PdfColor primary,
    PdfColor textGray,
    PdfTemplate template,
  ) {
    final lightGray = PdfColor.fromHex('#F3F4F6');
    final headerBg = template == PdfTemplate.classic
        ? PdfColors.grey900
        : primary;
    final headerText = template == PdfTemplate.minimal
        ? PdfColors.grey900
        : PdfColors.white;
    PdfColor zebraColor(int i) {
      switch (template) {
        case PdfTemplate.minimal:
          return i.isEven ? PdfColors.white : PdfColors.grey50;
        case PdfTemplate.classic:
          return i.isEven ? PdfColors.white : PdfColors.grey100;
        case PdfTemplate.modern:
          return i.isEven ? PdfColors.white : lightGray;
      }
    }

    return pw.Table(
      columnWidths: {
        0: const pw.FlexColumnWidth(4),
        1: const pw.FixedColumnWidth(50),
        2: const pw.FixedColumnWidth(80),
        3: const pw.FixedColumnWidth(80),
      },
      border: template == PdfTemplate.classic
          ? pw.TableBorder.all(color: PdfColors.grey300, width: 0.7)
          : null,
      children: [
        pw.TableRow(
          decoration: template == PdfTemplate.minimal
              ? pw.BoxDecoration(
                  border: pw.Border(
                    bottom: pw.BorderSide(
                        color: PdfColors.grey900, width: 1.2),
                  ),
                )
              : pw.BoxDecoration(color: headerBg),
          children: [
            _tableHeader(l10n.pdfDescription, color: headerText),
            _tableHeader(l10n.pdfQty,
                align: pw.TextAlign.center, color: headerText),
            _tableHeader(l10n.pdfRate,
                align: pw.TextAlign.right, color: headerText),
            _tableHeader(l10n.pdfAmount,
                align: pw.TextAlign.right, color: headerText),
          ],
        ),
        ...d.items.asMap().entries.map((entry) {
          final i = entry.key;
          final item = entry.value;
          return pw.TableRow(
            decoration: pw.BoxDecoration(color: zebraColor(i)),
            children: [
              _tableCell(item.description),
              _tableCell(
                item.quantity % 1 == 0
                    ? item.quantity.toInt().toString()
                    : item.quantity.toStringAsFixed(2),
                align: pw.TextAlign.center,
              ),
              _tableCell(
                _formatCurrency(item.rate, d.currency),
                align: pw.TextAlign.right,
              ),
              _tableCell(
                _formatCurrency(item.amount, d.currency),
                align: pw.TextAlign.right,
              ),
            ],
          );
        }),
      ],
    );
  }

  // ─── Totals ──────────────────────────────────────────────────────────────

  static pw.Widget _buildTotals(
    _DocData d,
    AppLocalizations l10n,
    PdfColor primary,
    PdfColor textGray,
    PdfTemplate template,
  ) {
    final totalColor = template == PdfTemplate.modern
        ? primary
        : PdfColors.grey900;

    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.end,
      children: [
        pw.Container(
          width: 220,
          child: pw.Column(
            children: [
              _totalRow(
                l10n.pdfSubtotal,
                _formatCurrency(d.subtotal, d.currency),
                textGray,
              ),
              if (d.taxAmount > 0) ...[
                pw.SizedBox(height: 4),
                _totalRow(
                  d.taxLabel,
                  _formatCurrency(d.taxAmount, d.currency),
                  textGray,
                ),
              ],
              pw.SizedBox(height: 8),
              if (template == PdfTemplate.classic) ...[
                pw.Divider(thickness: 1.2, color: PdfColors.grey900),
                pw.SizedBox(height: 3),
                pw.Divider(thickness: 0.6, color: PdfColors.grey900),
              ] else if (template == PdfTemplate.minimal) ...[
                pw.Divider(thickness: 0.8, color: textGray),
              ] else ...[
                pw.Divider(thickness: 2, color: primary),
              ],
              pw.SizedBox(height: 8),
              _totalRow(
                l10n.pdfTotal,
                _formatCurrency(d.total, d.currency),
                totalColor,
                isTotal: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ─── Footer ──────────────────────────────────────────────────────────────

  static pw.Widget _buildFooter(
    _DocData d,
    AppLocalizations l10n,
    PdfColor primary,
    PdfColor textGray,
    PdfTemplate template,
  ) {
    final children = <pw.Widget>[];

    if (d.paymentLink != null && d.paymentLink!.isNotEmpty) {
      children.add(
        pw.Container(
          padding: const pw.EdgeInsets.all(12),
          decoration: pw.BoxDecoration(
            color: primary.withValues(0.08, null, null, null),
            borderRadius: pw.BorderRadius.circular(8),
            border: pw.Border.all(
                color: primary.withValues(0.4, null, null, null)),
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                d.paymentLinkText ?? l10n.pdfPayOnline,
                style: pw.TextStyle(
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                  color: primary,
                ),
              ),
              pw.SizedBox(height: 4),
              pw.Text(
                d.paymentLink!,
                style: pw.TextStyle(fontSize: 11, color: primary),
              ),
            ],
          ),
        ),
      );
      children.add(pw.SizedBox(height: 16));
    }

    if (d.signaturePath != null && File(d.signaturePath!).existsSync()) {
      children.add(pw.SizedBox(height: 20));
      children.add(
        pw.Text(
          d.signatureLabel ?? l10n.pdfSignature,
          style: pw.TextStyle(
            fontSize: 10,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
      );
      children.add(pw.SizedBox(height: 8));
      children.add(
        pw.Image(
          pw.MemoryImage(File(d.signaturePath!).readAsBytesSync()),
          height: 60,
          alignment: pw.Alignment.centerLeft,
        ),
      );
      children.add(pw.SizedBox(height: 20));
    }

    if (d.notes != null && d.notes!.isNotEmpty) {
      children.add(pw.Divider(color: PdfColor.fromHex('#E5E7EB')));
      children.add(pw.SizedBox(height: 10));
      children.add(
        pw.Text(
          l10n.pdfNotes,
          style: pw.TextStyle(
            fontSize: 10,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
      );
      children.add(pw.SizedBox(height: 4));
      children.add(
        pw.Text(d.notes!, style: pw.TextStyle(fontSize: 10, color: textGray)),
      );
    }

    if (d.paymentTerms != null && d.paymentTerms!.isNotEmpty) {
      children.add(pw.SizedBox(height: 8));
      children.add(
        pw.Text(
          l10n.pdfPaymentTerms,
          style: pw.TextStyle(
            fontSize: 10,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
      );
      children.add(pw.SizedBox(height: 4));
      children.add(
        pw.Text(d.paymentTerms!,
            style: pw.TextStyle(fontSize: 10, color: textGray)),
      );
    }

    children.add(pw.SizedBox(height: 16));
    children.add(
      pw.Center(
        child: pw.Text(
          d.thankYou,
          style: pw.TextStyle(
            fontSize: 12,
            fontStyle: pw.FontStyle.italic,
            color: textGray,
          ),
        ),
      ),
    );

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: children,
    );
  }

  // ─── Small helpers ───────────────────────────────────────────────────────

  static pw.Widget _infoRow(String label, String value, PdfColor color) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.end,
      children: [
        pw.Text(label, style: pw.TextStyle(fontSize: 10, color: color)),
        pw.SizedBox(width: 6),
        pw.Text(value,
            style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
      ],
    );
  }

  static pw.Widget _tableHeader(String text,
      {pw.TextAlign align = pw.TextAlign.left, PdfColor? color}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: pw.Text(
        text,
        textAlign: align,
        style: pw.TextStyle(
          fontSize: 10,
          fontWeight: pw.FontWeight.bold,
          color: color ?? PdfColors.white,
        ),
      ),
    );
  }

  static pw.Widget _tableCell(String text,
      {pw.TextAlign align = pw.TextAlign.left}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: pw.Text(text,
          textAlign: align, style: const pw.TextStyle(fontSize: 10)),
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
            fontWeight: isTotal ? pw.FontWeight.bold : pw.FontWeight.normal,
            color: color,
          ),
        ),
        pw.Text(
          value,
          style: pw.TextStyle(
            fontSize: isTotal ? 13 : 10,
            fontWeight: isTotal ? pw.FontWeight.bold : pw.FontWeight.normal,
            color: color,
          ),
        ),
      ],
    );
  }

  static PdfColor _estimateStatusColor(EstimateStatus status) {
    switch (status) {
      case EstimateStatus.accepted:
        return PdfColor.fromHex('#10B981');
      case EstimateStatus.declined:
        return PdfColor.fromHex('#EF4444');
      case EstimateStatus.expired:
        return PdfColor.fromHex('#6B7280');
      case EstimateStatus.sent:
        return PdfColor.fromHex('#F59E0B');
      case EstimateStatus.draft:
        return PdfColor.fromHex('#6B7280');
    }
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

class _DocData {
  const _DocData({
    required this.docTitle,
    required this.numberLabel,
    required this.number,
    required this.dateLabel,
    required this.date,
    required this.dueLabel,
    required this.due,
    required this.statusLabel,
    required this.statusColor,
    required this.logoPath,
    required this.businessName,
    required this.businessTaxId,
    required this.taxIdLabel,
    required this.businessEmail,
    required this.businessPhone,
    required this.businessAddress,
    required this.clientName,
    required this.clientEmail,
    required this.clientPhone,
    required this.clientAddress,
    required this.clientVatText,
    required this.items,
    required this.currency,
    required this.subtotal,
    required this.taxLabel,
    required this.taxAmount,
    required this.total,
    required this.paymentLink,
    required this.paymentLinkText,
    required this.notes,
    required this.paymentTerms,
    required this.signaturePath,
    required this.signatureLabel,
    required this.thankYou,
  });

  final String docTitle;
  final String numberLabel;
  final String number;
  final String dateLabel;
  final String date;
  final String? dueLabel;
  final String? due;
  final String statusLabel;
  final PdfColor statusColor;
  final String? logoPath;
  final String businessName;
  final String? businessTaxId;
  final String? taxIdLabel;
  final String businessEmail;
  final String? businessPhone;
  final String? businessAddress;
  final String clientName;
  final String clientEmail;
  final String? clientPhone;
  final String? clientAddress;
  final String? clientVatText;
  final List<LineItem> items;
  final String currency;
  final double subtotal;
  final String taxLabel;
  final double taxAmount;
  final double total;
  final String? paymentLink;
  final String? paymentLinkText;
  final String? notes;
  final String? paymentTerms;
  final String? signaturePath;
  final String? signatureLabel;
  final String thankYou;
}
