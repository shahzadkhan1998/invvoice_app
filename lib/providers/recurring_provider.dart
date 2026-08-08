import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import '../models/invoice.dart';
import '../models/recurring_profile.dart';
import 'invoice_provider.dart';

/// Manages recurring billing profiles in the `recurring` Hive box. Due
/// invoices are generated on app start so the feature works fully offline.
class RecurringProvider with ChangeNotifier {
  final Box _box = Hive.box('recurring');
  List<RecurringProfile> _profiles = [];
  bool _isLoading = false;
  String? _error;

  List<RecurringProfile> get profiles => _profiles;
  bool get isLoading => _isLoading;
  String? get error => _error;
  List<RecurringProfile> get activeProfiles =>
      _profiles.where((p) => p.active).toList();

  RecurringProvider() {
    load();
  }

  Future<void> load() async {
    _isLoading = true;
    notifyListeners();
    try {
      _profiles = _box.values
          .map((v) =>
              RecurringProfile.fromJson(Map<String, dynamic>.from(v)))
          .toList();
      _profiles.sort((a, b) => a.nextRunDate.compareTo(b.nextRunDate));
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<RecurringProfile?> createProfile(RecurringProfile profile) async {
    try {
      await _box.put(profile.id, profile.toJson());
      _profiles.add(profile);
      _profiles.sort((a, b) => a.nextRunDate.compareTo(b.nextRunDate));
      notifyListeners();
      return profile;
    } catch (e) {
      _error = e.toString();
      notifyListeners();
      return null;
    }
  }

  Future<void> updateProfile(RecurringProfile profile) async {
    try {
      final toStore = profile.copyWith(
        isSynced: false,
        updatedAt: DateTime.now(),
      );
      await _box.put(toStore.id, toStore.toJson());
      final idx = _profiles.indexWhere((p) => p.id == toStore.id);
      if (idx != -1) {
        _profiles[idx] = toStore;
        _profiles.sort((a, b) => a.nextRunDate.compareTo(b.nextRunDate));
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deleteProfile(String id) async {
    try {
      await _box.delete(id);
      _profiles.removeWhere((p) => p.id == id);
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> setActive(String id, bool active) async {
    final idx = _profiles.indexWhere((p) => p.id == id);
    if (idx == -1) return;
    await updateProfile(_profiles[idx].copyWith(active: active));
  }

  RecurringProfile? getProfileById(String id) {
    try {
      return _profiles.firstWhere((p) => p.id == id);
    } catch (_) {
      return null;
    }
  }

  /// Generates a draft invoice for every active profile whose next run date
  /// has passed, catching up with a cap to avoid runaway generation. Returns
  /// the number of invoices created.
  Future<int> generateDueInvoices(InvoiceProvider invoiceProvider) async {
    final now = DateTime.now();
    var created = 0;
    try {
      for (int i = 0; i < _profiles.length; i++) {
        final p = _profiles[i];
        if (!p.active) continue;
        var next = p.nextRunDate;
        if (next.isAfter(now)) continue;

        var guard = 0;
        while (!next.isAfter(now) && guard < 24) {
          await _generateInvoice(p, invoiceProvider);
          created++;
          next = _advance(next, p.frequency);
          guard++;
        }

        final updated = p.copyWith(
          nextRunDate: next,
          lastRunDate: now,
        );
        _profiles[i] = updated;
        await _box.put(updated.id, updated.toJson());
      }
      if (created > 0) notifyListeners();
    } catch (e) {
      _error = e.toString();
    }
    return created;
  }

  Future<void> _generateInvoice(
    RecurringProfile profile,
    InvoiceProvider invoiceProvider,
  ) async {
    final invoiceDate = DateTime.now();
    final invoice = Invoice(
      id: const Uuid().v4(),
      invoiceNumber: invoiceProvider.generateInvoiceNumber(),
      clientId: profile.clientId,
      clientName: profile.clientName,
      invoiceDate: invoiceDate,
      dueDate: invoiceDate.add(Duration(days: profile.invoiceDueDays)),
      lineItems: profile.lineItems
          .map((item) => item.copyWith(id: const Uuid().v4()))
          .toList(),
      subtotal: profile.subtotal,
      taxRate: profile.taxRate,
      taxAmount: profile.taxAmount,
      total: profile.total,
      status: InvoiceStatus.draft,
      notes: profile.notes,
      paymentTerms: profile.paymentTerms,
      currency: profile.currency,
    );
    await invoiceProvider.createInvoice(invoice);
  }

  DateTime _advance(DateTime date, RecurrenceFrequency frequency) {
    switch (frequency) {
      case RecurrenceFrequency.weekly:
        return date.add(const Duration(days: 7));
      case RecurrenceFrequency.biweekly:
        return date.add(const Duration(days: 14));
      case RecurrenceFrequency.monthly:
        return _addMonths(date, 1);
      case RecurrenceFrequency.quarterly:
        return _addMonths(date, 3);
      case RecurrenceFrequency.yearly:
        return _addMonths(date, 12);
    }
  }

  /// Adds months with day clamping (e.g. Jan 31 + 1 month -> Feb 28/29).
  DateTime _addMonths(DateTime date, int months) {
    final total = date.month - 1 + months;
    final year = date.year + (total < 0 ? -1 : 0) + total ~/ 12;
    final month = ((total % 12) + 12) % 12 + 1;
    final lastDay = DateTime(year, month + 1, 0).day;
    final day = date.day > lastDay ? lastDay : date.day;
    return DateTime(year, month, day, date.hour, date.minute, date.second);
  }
}
