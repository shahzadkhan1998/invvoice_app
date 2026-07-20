import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Manages the freemium tier limits.
///
/// Free tier: 5 invoices + 3 clients (lifetime).
/// Pro tier: unlimited — gated by the [isPro] flag, which today is toggled
/// locally (e.g. after a successful `in_app_purchase` transaction). The
/// paywall wiring can call [setPro(true)] once purchases are integrated.
class SubscriptionProvider with ChangeNotifier {
  static const int freeInvoiceLimit = 3;
  static const int freeClientLimit = 1;

  bool _isPro = false;
  bool get isPro => _isPro;

  int _invoiceCount = 0;
  int _clientCount = 0;

  SubscriptionProvider() {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    _isPro = prefs.getBool('is_pro') ?? false;
    _refreshCounts();
    notifyListeners();
  }

  /// Re-reads the stored invoice/client counts from Hive. Call this whenever
  /// an invoice or client is created/deleted so the free-tier limits stay
  /// accurate and the paywall can be shown at the right moment.
  void _refreshCounts() {
    try {
      _invoiceCount = Hive.box('invoices').length;
    } catch (_) {}
    try {
      _clientCount = Hive.box('clients').length;
    } catch (_) {}
  }

  /// Call whenever invoice/client counts change so limits can be enforced.
  void updateCounts({int? invoiceCount, int? clientCount}) {
    var changed = false;
    if (invoiceCount != null && invoiceCount != _invoiceCount) {
      _invoiceCount = invoiceCount;
      changed = true;
    }
    if (clientCount != null && clientCount != _clientCount) {
      _clientCount = clientCount;
      changed = true;
    }
    if (changed) notifyListeners();
  }

  /// Force a re-read of stored counts (e.g. after a delete).
  void refresh() {
    _refreshCounts();
    notifyListeners();
  }

  bool get canCreateInvoice =>
      _isPro || _invoiceCount < freeInvoiceLimit;

  bool get canCreateClient => _isPro || _clientCount < freeClientLimit;

  int get remainingInvoices =>
      _isPro ? 999999 : (freeInvoiceLimit - _invoiceCount).clamp(0, freeInvoiceLimit);

  int get remainingClients =>
      _isPro ? 999999 : (freeClientLimit - _clientCount).clamp(0, freeClientLimit);

  /// Flip the Pro flag (call from real payment verification later).
  Future<void> setPro(bool value) async {
    _isPro = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('is_pro', value);
    notifyListeners();
  }

  String get tierLabel => _isPro ? 'Pro' : 'Free';
}
