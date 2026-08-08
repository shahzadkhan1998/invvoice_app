import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/catalog_item.dart';

/// Manages the local product/service catalog that can be reused when building
/// invoice line items.
class CatalogProvider with ChangeNotifier {
  final Box _box = Hive.box('catalog');
  List<CatalogItem> _items = [];
  bool _isLoading = false;
  String? _error;

  List<CatalogItem> get items => _items;
  bool get isLoading => _isLoading;
  String? get error => _error;

  CatalogProvider() {
    _load();
  }

  Future<void> _load() async {
    _isLoading = true;
    notifyListeners();
    try {
      _items = _box.values
          .map((v) => CatalogItem.fromJson(Map<String, dynamic>.from(v)))
          .toList()
        ..sort((a, b) => a.description.compareTo(b.description));
    } catch (e) {
      _error = 'Failed to load catalog: $e';
    }
    _isLoading = false;
    notifyListeners();
  }

  List<CatalogItem> search(String query) {
    if (query.isEmpty) return _items;
    final q = query.toLowerCase();
    return _items
        .where((i) => i.description.toLowerCase().contains(q))
        .toList();
  }

  Future<CatalogItem?> addItem(CatalogItem item) async {
    try {
      await _box.put(item.id, item.toJson());
      _items.add(item);
      _items.sort((a, b) => a.description.compareTo(b.description));
      notifyListeners();
      return item;
    } catch (e) {
      _error = 'Failed to add catalog item: $e';
      notifyListeners();
      return null;
    }
  }

  Future<void> deleteItem(String id) async {
    try {
      await _box.delete(id);
      _items.removeWhere((i) => i.id == id);
      notifyListeners();
    } catch (e) {
      _error = 'Failed to delete catalog item: $e';
      notifyListeners();
    }
  }
}
