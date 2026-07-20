import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/client.dart';
import '../services/sync_service.dart';

class ClientProvider with ChangeNotifier {
  final Box _clientBox = Hive.box('clients');
  final SyncService _sync = SyncService();

  List<Client> _clients = [];
  bool _isLoading = false;
  String? _error;

  List<Client> get clients => _clients;
  bool get isLoading => _isLoading;
  String? get error => _error;

  ClientProvider() {
    loadClients();
  }

  Future<void> loadClients() async {
    _isLoading = true;
    notifyListeners();

    try {
      final data = _clientBox.values.toList();
      _clients = data
          .map((json) => Client.fromJson(Map<String, dynamic>.from(json)))
          .toList();
      _clients.sort((a, b) => a.name.compareTo(b.name));
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = 'Failed to load clients: $e';
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<Client?> createClient(Client client) async {
    try {
      final toStore = client.copyWith(isSynced: false);
      await _clientBox.put(toStore.id, toStore.toJson());
      _clients.add(toStore);
      _clients.sort((a, b) => a.name.compareTo(b.name));
      notifyListeners();
      _sync.uploadClient(toStore).catchError((_) {});
      return toStore;
    } catch (e) {
      _error = 'Failed to create client: $e';
      notifyListeners();
      return null;
    }
  }

  Future<void> updateClient(Client client) async {
    try {
      final toStore = client.copyWith(isSynced: false);
      await _clientBox.put(toStore.id, toStore.toJson());
      final index = _clients.indexWhere((c) => c.id == toStore.id);
      if (index != -1) {
        _clients[index] = toStore;
        notifyListeners();
      }
      _sync.uploadClient(toStore).catchError((_) {});
    } catch (e) {
      _error = 'Failed to update client: $e';
      notifyListeners();
    }
  }

  Future<void> deleteClient(String clientId) async {
    try {
      await _clientBox.delete(clientId);
      _clients.removeWhere((c) => c.id == clientId);
      notifyListeners();
      _sync.deleteClient(clientId).catchError((_) {});
    } catch (e) {
      _error = 'Failed to delete client: $e';
      notifyListeners();
    }
  }

  Future<void> updateClientStats(String clientId, double invoiceTotal) async {
    final index = _clients.indexWhere((c) => c.id == clientId);
    if (index != -1) {
      final updated = _clients[index].copyWith(
        totalInvoices: _clients[index].totalInvoices + 1,
        totalBilled: _clients[index].totalBilled + invoiceTotal,
      );
      await updateClient(updated);
    }
  }

  List<Client> searchClients(String query) {
    if (query.isEmpty) return _clients;
    final q = query.toLowerCase();
    return _clients.where((c) =>
      c.name.toLowerCase().contains(q) ||
      c.email.toLowerCase().contains(q)
    ).toList();
  }

  Client? getClientById(String id) {
    try {
      return _clients.firstWhere((c) => c.id == id);
    } catch (_) {
      return null;
    }
  }

  /// Replace a single client in local state + storage (used by sync pull).
  Future<void> upsertFromSync(Client client) async {
    await _clientBox.put(client.id, client.toJson());
    final index = _clients.indexWhere((c) => c.id == client.id);
    if (index != -1) {
      _clients[index] = client;
    } else {
      _clients.add(client);
      _clients.sort((a, b) => a.name.compareTo(b.name));
    }
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
