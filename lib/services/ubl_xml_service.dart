import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../models/invoice.dart';
import '../models/client.dart';

/// Generates UBL 2.1 (EN 16931 / PEPPOL) invoice XML for e-invoicing
/// compliance. Sufficient for direct submission to e-invoicing portals
/// (e.g. UAE FTA, EU PEPPOL BIS) as a data export. A full production
/// implementation would add a digital signature (XAdES).
class UblXmlService {
  static String generateInvoiceXml({
    required Invoice invoice,
    required Client client,
    required String businessName,
    String? businessEmail,
    String? businessPhone,
    String? businessAddress,
    String? businessTaxId,
    String? taxLabel,
  }) {
    final b = StringBuffer();
    b.writeln('<?xml version="1.0" encoding="UTF-8"?>');
    b.writeln('<Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"');
    b.writeln('  xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"');
    b.writeln('  xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">');
    b.writeln('  <cbc:CustomizationID>urn:cen.eu:en16931:2017</cbc:CustomizationID>');
    b.writeln('  <cbc:ProfileID>urn:fdc:peppol.eu:2017:poacc:billing:01:1.0</cbc:ProfileID>');
    b.writeln('  <cbc:ID>${_esc(invoice.invoiceNumber)}</cbc:ID>');
    b.writeln('  <cbc:IssueDate>${_isoDate(invoice.invoiceDate)}</cbc:IssueDate>');
    b.writeln('  <cbc:DueDate>${_isoDate(invoice.dueDate)}</cbc:DueDate>');
    b.writeln('  <cbc:InvoiceTypeCode>380</cbc:InvoiceTypeCode>');
    b.writeln('  <cbc:DocumentCurrencyCode>${_esc(invoice.currency)}</cbc:DocumentCurrencyCode>');

    // Supplier (seller)
    b.writeln('  <cac:AccountingSupplierParty>');
    b.writeln('    <cac:Party>');
    b.writeln('      <cac:PartyName><cbc:Name>${_esc(businessName)}</cbc:Name></cac:PartyName>');
    if (businessTaxId != null && businessTaxId.isNotEmpty) {
      b.writeln('      <cac:PartyTaxScheme><cbc:CompanyID>${_esc(businessTaxId)}</cbc:CompanyID>'
          '<cac:TaxScheme><cbc:ID>${_esc(taxLabel ?? 'VAT')}</cbc:ID></cac:TaxScheme></cac:PartyTaxScheme>');
    }
    if (businessAddress != null && businessAddress.isNotEmpty) {
      b.writeln('      <cac:PostalAddress><cbc:StreetName>${_esc(businessAddress)}</cbc:StreetName></cac:PostalAddress>');
    }
    b.writeln('    </cac:Party>');
    b.writeln('  </cac:AccountingSupplierParty>');

    // Customer (buyer)
    b.writeln('  <cac:AccountingCustomerParty>');
    b.writeln('    <cac:Party>');
    b.writeln('      <cac:PartyName><cbc:Name>${_esc(client.name)}</cbc:Name></cac:PartyName>');
    if (client.vatNumber != null && client.vatNumber!.isNotEmpty) {
      b.writeln('      <cac:PartyTaxScheme><cbc:CompanyID>${_esc(client.vatNumber!)}</cbc:CompanyID>'
          '<cac:TaxScheme><cbc:ID>${_esc(taxLabel ?? 'VAT')}</cbc:ID></cac:TaxScheme></cac:PartyTaxScheme>');
    }
    if (client.address != null && client.address!.isNotEmpty) {
      b.writeln('      <cac:PostalAddress><cbc:StreetName>${_esc(client.address!)}</cbc:StreetName>'
          '<cbc:CityName>${_esc(client.city ?? '')}</cbc:CityName></cac:PostalAddress>');
    }
    b.writeln('    </cac:Party>');
    b.writeln('  </cac:AccountingCustomerParty>');

    // Tax total
    b.writeln('  <cac:TaxTotal>');
    b.writeln('    <cbc:TaxAmount currencyID="${_esc(invoice.currency)}">${_n(invoice.taxAmount)}</cbc:TaxAmount>');
    if (invoice.taxAmount > 0) {
      b.writeln('    <cac:TaxSubtotal>');
      b.writeln('      <cbc:TaxableAmount currencyID="${_esc(invoice.currency)}">${_n(invoice.subtotal)}</cbc:TaxableAmount>');
      b.writeln('      <cbc:TaxAmount currencyID="${_esc(invoice.currency)}">${_n(invoice.taxAmount)}</cbc:TaxAmount>');
      b.writeln('      <cac:TaxCategory>');
      b.writeln('        <cbc:ID>S</cbc:ID>');
      b.writeln('        <cbc:Percent>${_n(invoice.taxRate)}</cbc:Percent>');
      b.writeln('        <cac:TaxScheme><cbc:ID>${_esc(taxLabel ?? 'VAT')}</cbc:ID></cac:TaxScheme>');
      b.writeln('      </cac:TaxCategory>');
      b.writeln('    </cac:TaxSubtotal>');
    }
    b.writeln('  </cac:TaxTotal>');

    // Legal monetary totals
    b.writeln('  <cac:LegalMonetaryTotal>');
    b.writeln('    <cbc:LineExtensionAmount currencyID="${_esc(invoice.currency)}">${_n(invoice.subtotal)}</cbc:LineExtensionAmount>');
    b.writeln('    <cbc:TaxExclusiveAmount currencyID="${_esc(invoice.currency)}">${_n(invoice.subtotal)}</cbc:TaxExclusiveAmount>');
    b.writeln('    <cbc:TaxInclusiveAmount currencyID="${_esc(invoice.currency)}">${_n(invoice.total)}</cbc:TaxInclusiveAmount>');
    b.writeln('    <cbc:PayableAmount currencyID="${_esc(invoice.currency)}">${_n(invoice.total)}</cbc:PayableAmount>');
    b.writeln('  </cac:LegalMonetaryTotal>');

    // Line items
    for (final item in invoice.lineItems) {
      b.writeln('  <cac:InvoiceLine>');
      b.writeln('    <cbc:ID>${_esc(item.id)}</cbc:ID>');
      b.writeln('    <cbc:InvoicedQuantity unitCode="C62">${_n(item.quantity)}</cbc:InvoicedQuantity>');
      b.writeln('    <cbc:LineExtensionAmount currencyID="${_esc(invoice.currency)}">${_n(item.amount)}</cbc:LineExtensionAmount>');
      b.writeln('    <cac:Item>');
      b.writeln('      <cbc:Name>${_esc(item.description)}</cbc:Name>');
      b.writeln('    </cac:Item>');
      b.writeln('    <cac:Price>');
      b.writeln('      <cbc:PriceAmount currencyID="${_esc(invoice.currency)}">${_n(item.rate)}</cbc:PriceAmount>');
      b.writeln('    </cac:Price>');
      b.writeln('  </cac:InvoiceLine>');
    }

    b.writeln('</Invoice>');
    return b.toString();
  }

  /// Writes the XML to a file and opens the system share sheet.
  static Future<File> saveAndShareXml(String xml, String invoiceNumber) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File(
        '${directory.path}/${invoiceNumber.replaceAll('/', '-')}.xml');
    await file.writeAsString(xml);
    await SharePlus.instance.share(ShareParams(
      files: [XFile(file.path, mimeType: 'application/xml')],
      subject: invoiceNumber,
    ));
    return file;
  }

  static String _esc(String input) {
    return input
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&apos;');
  }

  static String _isoDate(DateTime date) {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  static String _n(double value) {
    if (value == value.roundToDouble()) {
      return value.toStringAsFixed(0);
    }
    return value.toStringAsFixed(2);
  }
}
