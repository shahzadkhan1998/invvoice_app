import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/invoice.dart';

class InvoiceProvider with ChangeNotifier {
  final Box _box = Hive.box('invoices');
  List<Invoice> _invoices = [];
  bool _isLoading = false;
  String? _error;

  List<Invoice> get invoices => _invoices;
  bool get isLoading => _isLoading;
  String? get error => _error;

  List<Invoice> get paidInvoices => _invoices.where((i) => i.status == InvoiceStatus.paid).toList();
  List<Invoice> get pendingInvoices => _invoices.where((i) => i.status == InvoiceStatus.sent).toList();
  List<Invoice> get overdueInvoices => _invoices.where((i) => i.status == InvoiceStatus.overdue).toList();
  List<Invoice> get draftInvoices => _invoices.where((i) => i.status == InvoiceStatus.draft).toList();

  double get totalOutstanding => pendingInvoices.fold(0.0, (s, i) => s + i.total);
  double get totalOverdue => overdueInvoices.fold(0.0, (s, i) => s + i.total);
  double get thisMonthTotal {
    final now = DateTime.now();
    return _invoices.where((i) => i.invoiceDate.year == now.year && i.invoiceDate.month == now.month)
        .fold(0.0, (s, i) => s + i.total);
  }

  InvoiceProvider() { loadInvoices(); }

  Future<void> loadInvoices() async {
    _isLoading = true; notifyListeners();
    try {
      _invoices = _box.values.map((v) => Invoice.fromJson(Map<String, dynamic>.from(v))).toList();
      _invoices.sort((a, b) => b.invoiceDate.compareTo(a.invoiceDate));
      _updateOverdue();
    } catch (e) { _error = e.toString(); }
    _isLoading = false; notifyListeners();
  }

  Future<Invoice?> createInvoice(Invoice invoice) async {
    try {
      await _box.put(invoice.id, invoice.toJson());
      _invoices.insert(0, invoice); notifyListeners(); return invoice;
    } catch (e) { _error = e.toString(); notifyListeners(); return null; }
  }

  Future<void> updateInvoice(Invoice invoice) async {
    try {
      await _box.put(invoice.id, invoice.toJson());
      final idx = _invoices.indexWhere((i) => i.id == invoice.id);
      if (idx != -1) { _invoices[idx] = invoice; notifyListeners(); }
    } catch (e) { _error = e.toString(); notifyListeners(); }
  }

  Future<void> deleteInvoice(String id) async {
    try {
      await _box.delete(id);
      _invoices.removeWhere((i) => i.id == id); notifyListeners();
    } catch (e) { _error = e.toString(); notifyListeners(); }
  }

  Future<void> markAsPaid(String id) async {
    final idx = _invoices.indexWhere((i) => i.id == id);
    if (idx != -1) {
      await updateInvoice(_invoices[idx].copyWith(
          status: InvoiceStatus.paid, paidDate: DateTime.now()));
    }
  }

  String generateInvoiceNumber() {
    final year = DateTime.now().year;
    final count = _invoices.length + 1;
    return 'INV-$year-${count.toString().padLeft(4, '0')}';
  }

  void _updateOverdue() {
    final now = DateTime.now();
    for (int i = 0; i < _invoices.length; i++) {
      if (_invoices[i].status == InvoiceStatus.sent && _invoices[i].dueDate.isBefore(now)) {
        _invoices[i] = _invoices[i].copyWith(status: InvoiceStatus.overdue);
        _box.put(_invoices[i].id, _invoices[i].toJson());
      }
    }
  }

  Invoice? getInvoiceById(String id) {
    try { return _invoices.firstWhere((i) => i.id == id); } catch (_) { return null; }
  }
}
