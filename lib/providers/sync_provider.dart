import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/invoice.dart';
import '../models/client.dart';
import '../services/sync_service.dart';
import 'invoice_provider.dart';
import 'client_provider.dart';

/// Orchestrates cloud sync and exposes status to the UI.
///
/// PDFs are intentionally NOT uploaded — they are regenerated on-device from
/// the synced invoice JSON, keeping everything on Firebase's free tier.
class SyncProvider with ChangeNotifier {
  final SyncService _sync = SyncService();

  bool _isSyncing = false;
  DateTime? _lastSyncedAt;
  String? _lastError;

  bool get isSyncing => _isSyncing;
  DateTime? get lastSyncedAt => _lastSyncedAt;
  String? get lastError => _lastError;
  bool get isSignedIn => _sync.isSignedIn;

  SyncProvider() {
    _loadLastSynced();
  }

  Future<void> _loadLastSynced() async {
    final prefs = await SharedPreferences.getInstance();
    final ms = prefs.getInt('last_synced_at');
    if (ms != null) {
      _lastSyncedAt = DateTime.fromMillisecondsSinceEpoch(ms);
      notifyListeners();
    }
  }

  Future<void> syncNow({
    required InvoiceProvider invoiceProvider,
    required ClientProvider clientProvider,
  }) async {
    if (_isSyncing || !_sync.isSignedIn) return;
    _isSyncing = true;
    _lastError = null;
    notifyListeners();

    try {
      final result = await _sync.syncAll(
        localInvoices: invoiceProvider.invoices,
        localClients: clientProvider.clients,
        onUpdateLocalInvoice: (inv) => invoiceProvider.upsertFromSync(inv),
        onUpdateLocalClient: (c) => clientProvider.upsertFromSync(c),
      );
      if (result.success) {
        _lastSyncedAt = DateTime.now();
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt(
            'last_synced_at', _lastSyncedAt!.millisecondsSinceEpoch);
      }
    } catch (e) {
      _lastError = e.toString();
    } finally {
      _isSyncing = false;
      notifyListeners();
    }
  }
}
