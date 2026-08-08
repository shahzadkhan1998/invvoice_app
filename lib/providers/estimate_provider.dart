import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import '../models/estimate.dart';
import '../models/invoice.dart';
import 'invoice_provider.dart';

/// Manages estimates (quotes) stored locally in the `estimates` Hive box.
/// Numbering uses a monotonic `EST-{year}-{count}` sequence persisted in
/// SharedPreferences so numbers never collide after deletions.
class EstimateProvider with ChangeNotifier {
  final Box _box = Hive.box('estimates');
  static const String _counterKey = 'estimate_counter';
  int _counter = 0;

  List<Estimate> _estimates = [];
  bool _isLoading = false;
  String? _error;

  List<Estimate> get estimates => _estimates;
  bool get isLoading => _isLoading;
  String? get error => _error;

  List<Estimate> get draftEstimates =>
      _estimates.where((e) => e.status == EstimateStatus.draft).toList();
  List<Estimate> get sentEstimates =>
      _estimates.where((e) => e.status == EstimateStatus.sent).toList();
  List<Estimate> get acceptedEstimates =>
      _estimates.where((e) => e.status == EstimateStatus.accepted).toList();

  /// Open estimates that can still be converted or followed up on.
  List<Estimate> get openEstimates => _estimates
      .where((e) => e.status == EstimateStatus.sent)
      .toList();

  EstimateProvider() {
    load();
  }

  Future<void> load() async {
    _isLoading = true;
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      _counter = prefs.getInt(_counterKey) ?? 0;
      _estimates = _box.values
          .map((v) => Estimate.fromJson(Map<String, dynamic>.from(v)))
          .toList();
      _estimates.sort((a, b) => b.issueDate.compareTo(a.issueDate));
      _updateExpired();
      _syncCounter();
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  /// Ensures the persisted estimate-number counter stays ahead of every
  /// existing estimate so new numbers never collide.
  void _syncCounter() {
    var maxSeq = 0;
    for (final est in _estimates) {
      final match = RegExp(r'(\d{4})$').firstMatch(est.estimateNumber);
      if (match == null) continue;
      final seq = int.tryParse(match.group(1)!);
      if (seq != null && seq > maxSeq) maxSeq = seq;
    }
    if (maxSeq > _counter) {
      _counter = maxSeq;
      SharedPreferences.getInstance()
          .then((p) => p.setInt(_counterKey, _counter));
    }
  }

  String generateEstimateNumber() {
    final year = DateTime.now().year;
    _counter++;
    SharedPreferences.getInstance().then((p) => p.setInt(_counterKey, _counter));
    return 'EST-$year-${_counter.toString().padLeft(4, '0')}';
  }

  Future<Estimate?> createEstimate(Estimate estimate) async {
    try {
      await _box.put(estimate.id, estimate.toJson());
      _estimates.insert(0, estimate);
      notifyListeners();
      return estimate;
    } catch (e) {
      _error = e.toString();
      notifyListeners();
      return null;
    }
  }

  Future<void> updateEstimate(Estimate estimate) async {
    try {
      final toStore = estimate.copyWith(
        isSynced: false,
        updatedAt: DateTime.now(),
      );
      await _box.put(toStore.id, toStore.toJson());
      final idx = _estimates.indexWhere((e) => e.id == toStore.id);
      if (idx != -1) {
        _estimates[idx] = toStore;
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deleteEstimate(String id) async {
    try {
      await _box.delete(id);
      _estimates.removeWhere((e) => e.id == id);
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> setStatus(String id, EstimateStatus status) async {
    final idx = _estimates.indexWhere((e) => e.id == id);
    if (idx == -1) return;
    await updateEstimate(_estimates[idx].copyWith(status: status));
  }

  Estimate? getEstimateById(String id) {
    try {
      return _estimates.firstWhere((e) => e.id == id);
    } catch (_) {
      return null;
    }
  }

  /// Turns an estimate into a real invoice, marks the estimate accepted and
  /// remembers the resulting invoice id.
  Future<Invoice?> convertToInvoice(
    String estimateId, {
    required InvoiceProvider invoiceProvider,
    DateTime? dueDate,
  }) async {
    final estimate = getEstimateById(estimateId);
    if (estimate == null) return null;

    final invoice = Invoice(
      id: const Uuid().v4(),
      invoiceNumber: invoiceProvider.generateInvoiceNumber(),
      clientId: estimate.clientId,
      clientName: estimate.clientName,
      invoiceDate: DateTime.now(),
      dueDate: dueDate ?? DateTime.now().add(const Duration(days: 30)),
      lineItems: estimate.lineItems,
      subtotal: estimate.subtotal,
      taxRate: estimate.taxRate,
      taxAmount: estimate.taxAmount,
      total: estimate.total,
      status: InvoiceStatus.draft,
      notes: estimate.notes,
      paymentTerms: estimate.paymentTerms,
      currency: estimate.currency,
    );

    final created = await invoiceProvider.createInvoice(invoice);
    if (created != null) {
      await updateEstimate(
        estimate.copyWith(
          status: EstimateStatus.accepted,
          convertedInvoiceId: created.id,
        ),
      );
    }
    return created;
  }

  /// Marks sent estimates whose expiry date has passed as expired.
  void _updateExpired() {
    final now = DateTime.now();
    for (int i = 0; i < _estimates.length; i++) {
      if (_estimates[i].status == EstimateStatus.sent &&
          _estimates[i].expiryDate.isBefore(now)) {
        _estimates[i] = _estimates[i].copyWith(status: EstimateStatus.expired);
        _box.put(_estimates[i].id, _estimates[i].toJson());
      }
    }
  }
}
