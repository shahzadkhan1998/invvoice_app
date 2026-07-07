class Invoice {
  final String id;
  final String invoiceNumber;
  final String clientId;
  final String clientName;
  final DateTime invoiceDate;
  final DateTime dueDate;
  final List<LineItem> lineItems;
  final double subtotal;
  final double taxRate;
  final double taxAmount;
  final double total;
  final InvoiceStatus status;
  final DateTime? paidDate;
  final String? notes;
  final String? paymentTerms;
  final String currency;
  final bool isSynced;
  final String? logoUrl;
  final String? signatureUrl;

  Invoice({
    required this.id,
    required this.invoiceNumber,
    required this.clientId,
    required this.clientName,
    required this.invoiceDate,
    required this.dueDate,
    required this.lineItems,
    required this.subtotal,
    required this.taxRate,
    required this.taxAmount,
    required this.total,
    required this.status,
    this.paidDate,
    this.notes,
    this.paymentTerms,
    this.currency = 'AED',
    this.isSynced = false,
    this.logoUrl,
    this.signatureUrl,
  });

  Invoice copyWith({
    String? id, String? invoiceNumber, String? clientId, String? clientName,
    DateTime? invoiceDate, DateTime? dueDate, List<LineItem>? lineItems,
    double? subtotal, double? taxRate, double? taxAmount, double? total,
    InvoiceStatus? status, DateTime? paidDate, String? notes,
    String? paymentTerms, String? currency, bool? isSynced,
    String? logoUrl, String? signatureUrl,
  }) {
    return Invoice(
      id: id ?? this.id, invoiceNumber: invoiceNumber ?? this.invoiceNumber,
      clientId: clientId ?? this.clientId, clientName: clientName ?? this.clientName,
      invoiceDate: invoiceDate ?? this.invoiceDate, dueDate: dueDate ?? this.dueDate,
      lineItems: lineItems ?? this.lineItems, subtotal: subtotal ?? this.subtotal,
      taxRate: taxRate ?? this.taxRate, taxAmount: taxAmount ?? this.taxAmount,
      total: total ?? this.total, status: status ?? this.status,
      paidDate: paidDate ?? this.paidDate, notes: notes ?? this.notes,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      currency: currency ?? this.currency, isSynced: isSynced ?? this.isSynced,
      logoUrl: logoUrl ?? this.logoUrl, signatureUrl: signatureUrl ?? this.signatureUrl,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id, 'invoiceNumber': invoiceNumber, 'clientId': clientId,
    'clientName': clientName, 'invoiceDate': invoiceDate.toIso8601String(),
    'dueDate': dueDate.toIso8601String(),
    'lineItems': lineItems.map((i) => i.toJson()).toList(),
    'subtotal': subtotal, 'taxRate': taxRate, 'taxAmount': taxAmount,
    'total': total, 'status': status.toString().split('.').last,
    'paidDate': paidDate?.toIso8601String(), 'notes': notes,
    'paymentTerms': paymentTerms, 'currency': currency, 'isSynced': isSynced,
    'logoUrl': logoUrl, 'signatureUrl': signatureUrl,
  };

  factory Invoice.fromJson(Map<String, dynamic> j) => Invoice(
    id: j['id'], invoiceNumber: j['invoiceNumber'], clientId: j['clientId'],
    clientName: j['clientName'], invoiceDate: DateTime.parse(j['invoiceDate']),
    dueDate: DateTime.parse(j['dueDate']),
    lineItems: (j['lineItems'] as List)
        .map((i) => LineItem.fromJson(Map<String, dynamic>.from(i))).toList(),
    subtotal: (j['subtotal'] as num).toDouble(),
    taxRate: (j['taxRate'] as num).toDouble(),
    taxAmount: (j['taxAmount'] as num).toDouble(),
    total: (j['total'] as num).toDouble(),
    status: _statusFrom(j['status']),
    paidDate: j['paidDate'] != null ? DateTime.parse(j['paidDate']) : null,
    notes: j['notes'], paymentTerms: j['paymentTerms'],
    currency: j['currency'] ?? 'AED', isSynced: j['isSynced'] ?? false,
    logoUrl: j['logoUrl'], signatureUrl: j['signatureUrl'],
  );

  static InvoiceStatus _statusFrom(String s) {
    switch (s) {
      case 'paid': return InvoiceStatus.paid;
      case 'sent': return InvoiceStatus.sent;
      case 'overdue': return InvoiceStatus.overdue;
      case 'cancelled': return InvoiceStatus.cancelled;
      default: return InvoiceStatus.draft;
    }
  }
}

class LineItem {
  final String id;
  final String description;
  final double quantity;
  final double rate;
  final double amount;
  final double taxRate;

  LineItem({
    required this.id, required this.description, required this.quantity,
    required this.rate, required this.amount, this.taxRate = 0.0,
  });

  LineItem copyWith({String? id, String? description, double? quantity,
      double? rate, double? amount, double? taxRate}) {
    return LineItem(
      id: id ?? this.id, description: description ?? this.description,
      quantity: quantity ?? this.quantity, rate: rate ?? this.rate,
      amount: amount ?? this.amount, taxRate: taxRate ?? this.taxRate,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id, 'description': description, 'quantity': quantity,
    'rate': rate, 'amount': amount, 'taxRate': taxRate,
  };

  factory LineItem.fromJson(Map<String, dynamic> j) => LineItem(
    id: j['id'], description: j['description'],
    quantity: (j['quantity'] as num).toDouble(),
    rate: (j['rate'] as num).toDouble(),
    amount: (j['amount'] as num).toDouble(),
    taxRate: (j['taxRate'] as num?)?.toDouble() ?? 0.0,
  );
}

enum InvoiceStatus { draft, sent, paid, overdue, cancelled }
