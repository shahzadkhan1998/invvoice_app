import 'invoice.dart';

enum EstimateStatus { draft, sent, accepted, declined, expired }

/// A professional estimate / quote sent to a client before invoicing.
/// Shares [LineItem] with invoices. When converted, the resulting invoice id
/// is stored in [convertedInvoiceId] and the status becomes [accepted].
class Estimate {
  final String id;
  final String estimateNumber;
  final String clientId;
  final String clientName;
  final DateTime issueDate;
  final DateTime expiryDate;
  final List<LineItem> lineItems;
  final double subtotal;
  final double taxRate;
  final double taxAmount;
  final double total;
  final EstimateStatus status;
  final String? notes;
  final String? paymentTerms;
  final String currency;
  final bool isSynced;
  final DateTime updatedAt;
  final String? convertedInvoiceId;

  Estimate({
    required this.id,
    required this.estimateNumber,
    required this.clientId,
    required this.clientName,
    required this.issueDate,
    required this.expiryDate,
    required this.lineItems,
    required this.subtotal,
    required this.taxRate,
    required this.taxAmount,
    required this.total,
    this.status = EstimateStatus.draft,
    this.notes,
    this.paymentTerms,
    this.currency = 'AED',
    this.isSynced = false,
    DateTime? updatedAt,
    this.convertedInvoiceId,
  }) : updatedAt = updatedAt ?? DateTime.now();

  Estimate copyWith({
    String? id,
    String? estimateNumber,
    String? clientId,
    String? clientName,
    DateTime? issueDate,
    DateTime? expiryDate,
    List<LineItem>? lineItems,
    double? subtotal,
    double? taxRate,
    double? taxAmount,
    double? total,
    EstimateStatus? status,
    String? notes,
    String? paymentTerms,
    String? currency,
    bool? isSynced,
    DateTime? updatedAt,
    String? convertedInvoiceId,
  }) {
    return Estimate(
      id: id ?? this.id,
      estimateNumber: estimateNumber ?? this.estimateNumber,
      clientId: clientId ?? this.clientId,
      clientName: clientName ?? this.clientName,
      issueDate: issueDate ?? this.issueDate,
      expiryDate: expiryDate ?? this.expiryDate,
      lineItems: lineItems ?? this.lineItems,
      subtotal: subtotal ?? this.subtotal,
      taxRate: taxRate ?? this.taxRate,
      taxAmount: taxAmount ?? this.taxAmount,
      total: total ?? this.total,
      status: status ?? this.status,
      notes: notes ?? this.notes,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      currency: currency ?? this.currency,
      isSynced: isSynced ?? this.isSynced,
      updatedAt: updatedAt ?? this.updatedAt,
      convertedInvoiceId: convertedInvoiceId ?? this.convertedInvoiceId,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'estimateNumber': estimateNumber,
    'clientId': clientId,
    'clientName': clientName,
    'issueDate': issueDate.toIso8601String(),
    'expiryDate': expiryDate.toIso8601String(),
    'lineItems': lineItems.map((i) => i.toJson()).toList(),
    'subtotal': subtotal,
    'taxRate': taxRate,
    'taxAmount': taxAmount,
    'total': total,
    'status': status.toString().split('.').last,
    'notes': notes,
    'paymentTerms': paymentTerms,
    'currency': currency,
    'isSynced': isSynced,
    'updatedAt': updatedAt.toIso8601String(),
    'convertedInvoiceId': convertedInvoiceId,
  };

  factory Estimate.fromJson(Map<String, dynamic> j) => Estimate(
    id: j['id'],
    estimateNumber: j['estimateNumber'],
    clientId: j['clientId'],
    clientName: j['clientName'],
    issueDate: DateTime.parse(j['issueDate']),
    expiryDate: DateTime.parse(j['expiryDate']),
    lineItems: (j['lineItems'] as List)
        .map((i) => LineItem.fromJson(Map<String, dynamic>.from(i)))
        .toList(),
    subtotal: (j['subtotal'] as num).toDouble(),
    taxRate: (j['taxRate'] as num).toDouble(),
    taxAmount: (j['taxAmount'] as num).toDouble(),
    total: (j['total'] as num).toDouble(),
    status: _statusFrom(j['status'] ?? 'draft'),
    notes: j['notes'],
    paymentTerms: j['paymentTerms'],
    currency: j['currency'] ?? 'AED',
    isSynced: j['isSynced'] ?? false,
    updatedAt: j['updatedAt'] != null
        ? DateTime.parse(j['updatedAt'] as String)
        : DateTime.parse(j['issueDate'] as String),
    convertedInvoiceId: j['convertedInvoiceId'],
  );

  static EstimateStatus _statusFrom(String s) {
    switch (s) {
      case 'sent':
        return EstimateStatus.sent;
      case 'accepted':
        return EstimateStatus.accepted;
      case 'declined':
        return EstimateStatus.declined;
      case 'expired':
        return EstimateStatus.expired;
      default:
        return EstimateStatus.draft;
    }
  }
}
