/// A reusable product/service that can be dropped into any invoice.
///
/// Stored locally in the `catalog` Hive box (no cloud sync yet — see
/// SyncService scope).
class CatalogItem {
  final String id;
  final String description;
  final double rate;
  final double taxRate;

  CatalogItem({
    required this.id,
    required this.description,
    required this.rate,
    this.taxRate = 0.0,
  });

  CatalogItem copyWith({
    String? id,
    String? description,
    double? rate,
    double? taxRate,
  }) {
    return CatalogItem(
      id: id ?? this.id,
      description: description ?? this.description,
      rate: rate ?? this.rate,
      taxRate: taxRate ?? this.taxRate,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'rate': rate,
        'taxRate': taxRate,
      };

  factory CatalogItem.fromJson(Map<String, dynamic> j) => CatalogItem(
        id: j['id'],
        description: j['description'],
        rate: (j['rate'] as num).toDouble(),
        taxRate: (j['taxRate'] as num?)?.toDouble() ?? 0.0,
      );
}
