import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/invoice.dart';
import '../services/sync_service.dart';
import '../services/review_service.dart';
import '../core/utils/invoice_number_utils.dart';
import 'subscription_provider.dart';

class InvoiceProvider with ChangeNotifier {
  final Box _box = Hive.box('invoices');
  final SyncService _sync = SyncService();
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

  void _syncCounts() {
    try {
      SubscriptionProvider().refresh();
    } catch (_) {}
  }

  Future<void> loadInvoices() async {
    _isLoading = true; notifyListeners();
    try {
      _invoices = _box.values.map((v) => Invoice.fromJson(Map<String, dynamic>.from(v))).toList();
      _invoices.sort((a, b) => b.invoiceDate.compareTo(a.invoiceDate));
      _updateOverdue();
      _syncCounter();
      _syncCounts();
    } catch (e) { _error = e.toString(); }
    _isLoading = false; notifyListeners();
  }

  /// Ensures the persisted invoice-number counter stays ahead of every
  /// existing invoice so new numbers never collide (fixes duplicate numbers
  /// that occurred because numbering previously used the in-memory list length).
  void _syncCounter() {
    var maxSeq = 0;
    for (final inv in _invoices) {
      final match = RegExp(r'(\d{4})$').firstMatch(inv.invoiceNumber);
      if (match == null) continue;
      final seq = int.tryParse(match.group(1)!);
      if (seq != null && seq > maxSeq) maxSeq = seq;
    }
    InvoiceNumberUtils.ensureAtLeast(maxSeq);
  }

  Future<Invoice?> createInvoice(Invoice invoice) async {
    try {
      final toStore = invoice.copyWith(isSynced: false);
      await _box.put(toStore.id, toStore.toJson());
      final isFirst = _invoices.isEmpty;
      _invoices.insert(0, toStore); notifyListeners();
      _sync.uploadInvoice(toStore).catchError((_) {});
      if (isFirst) {
        ReviewService.requestFirstInvoiceReview();
      }
      return toStore;
    } catch (e) { _error = e.toString(); notifyListeners(); return null; }
  }

  Future<void> updateInvoice(Invoice invoice) async {
    try {
      final toStore = invoice.copyWith(
          isSynced: false, updatedAt: DateTime.now());
      await _box.put(toStore.id, toStore.toJson());
      final idx = _invoices.indexWhere((i) => i.id == toStore.id);
      if (idx != -1) { _invoices[idx] = toStore; notifyListeners(); }
      _sync.uploadInvoice(toStore).catchError((_) {});
    } catch (e) { _error = e.toString(); notifyListeners(); }
  }

  Future<void> deleteInvoice(String id) async {
    try {
      await _box.delete(id);
      _invoices.removeWhere((i) => i.id == id); notifyListeners();
      _sync.deleteInvoice(id).catchError((_) {});
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
    final count = InvoiceNumberUtils.next();
    return '${InvoiceNumberUtils.prefix}$year-${count.toString().padLeft(4, '0')}';
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

  /// Replace a single invoice in local state + storage (used by sync pull).
  Future<void> upsertFromSync(Invoice invoice) async {
    await _box.put(invoice.id, invoice.toJson());
    final idx = _invoices.indexWhere((i) => i.id == invoice.id);
    if (idx != -1) {
      _invoices[idx] = invoice;
    } else {
      _invoices.insert(0, invoice);
    }
    notifyListeners();
  }
}
