class Client {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String? address;
  final String? city;
  final String? country;
  final String currency;
  final double defaultTaxRate;
  final String? vatNumber;
  final DateTime createdAt;
  final int totalInvoices;
  final double totalBilled;
  final bool isSynced;

  Client({
    required this.id, required this.name, required this.email,
    this.phone, this.address, this.city, this.country,
    this.currency = 'AED', this.defaultTaxRate = 5.0, this.vatNumber,
    DateTime? createdAt, this.totalInvoices = 0,
    this.totalBilled = 0.0, this.isSynced = false,
  }) : createdAt = createdAt ?? DateTime.now();

  Client copyWith({
    String? id, String? name, String? email, String? phone,
    String? address, String? city, String? country, String? currency,
    double? defaultTaxRate, String? vatNumber, DateTime? createdAt,
    int? totalInvoices, double? totalBilled, bool? isSynced,
  }) {
    return Client(
      id: id ?? this.id, name: name ?? this.name, email: email ?? this.email,
      phone: phone ?? this.phone, address: address ?? this.address,
      city: city ?? this.city, country: country ?? this.country,
      currency: currency ?? this.currency,
      defaultTaxRate: defaultTaxRate ?? this.defaultTaxRate,
      vatNumber: vatNumber ?? this.vatNumber,
      createdAt: createdAt ?? this.createdAt,
      totalInvoices: totalInvoices ?? this.totalInvoices,
      totalBilled: totalBilled ?? this.totalBilled,
      isSynced: isSynced ?? this.isSynced,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id, 'name': name, 'email': email, 'phone': phone,
    'address': address, 'city': city, 'country': country,
    'currency': currency, 'defaultTaxRate': defaultTaxRate,
    'vatNumber': vatNumber, 'createdAt': createdAt.toIso8601String(),
    'totalInvoices': totalInvoices, 'totalBilled': totalBilled,
    'isSynced': isSynced,
  };

  factory Client.fromJson(Map<String, dynamic> j) => Client(
    id: j['id'], name: j['name'], email: j['email'],
    phone: j['phone'], address: j['address'], city: j['city'],
    country: j['country'], currency: j['currency'] ?? 'AED',
    defaultTaxRate: (j['defaultTaxRate'] as num?)?.toDouble() ?? 5.0,
    vatNumber: j['vatNumber'],
    createdAt: DateTime.parse(j['createdAt']),
    totalInvoices: j['totalInvoices'] ?? 0,
    totalBilled: (j['totalBilled'] as num?)?.toDouble() ?? 0.0,
    isSynced: j['isSynced'] ?? false,
  );

  String get initials {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    return name.isNotEmpty ? name.substring(0, name.length.clamp(0, 2)).toUpperCase() : '?';
  }
}
