import 'invoice.dart';

enum RecurrenceFrequency { weekly, biweekly, monthly, quarterly, yearly }

/// A recurring billing profile that automatically generates invoices on a
/// schedule. Generation happens on app start (catch-up), so it works fully
/// offline without background tasks.
class RecurringProfile {
  final String id;
  final String title;
  final String clientId;
  final String clientName;
  final RecurrenceFrequency frequency;
  final List<LineItem> lineItems;
  final double subtotal;
  final double taxRate;
  final double taxAmount;
  final double total;
  final String currency;
  final DateTime nextRunDate;
  final int invoiceDueDays;
  final bool active;
  final DateTime? lastRunDate;
  final String? notes;
  final String? paymentTerms;
  final bool isSynced;
  final DateTime updatedAt;

  RecurringProfile({
    required this.id,
    required this.title,
    required this.clientId,
    required this.clientName,
    required this.frequency,
    required this.lineItems,
    required this.subtotal,
    required this.taxRate,
    required this.taxAmount,
    required this.total,
    required this.nextRunDate,
    required this.invoiceDueDays,
    this.active = true,
    this.lastRunDate,
    this.notes,
    this.paymentTerms,
    this.currency = 'AED',
    this.isSynced = false,
    DateTime? updatedAt,
  }) : updatedAt = updatedAt ?? DateTime.now();

  RecurringProfile copyWith({
    String? id,
    String? title,
    String? clientId,
    String? clientName,
    RecurrenceFrequency? frequency,
    List<LineItem>? lineItems,
    double? subtotal,
    double? taxRate,
    double? taxAmount,
    double? total,
    String? currency,
    DateTime? nextRunDate,
    int? invoiceDueDays,
    bool? active,
    DateTime? lastRunDate,
    String? notes,
    String? paymentTerms,
    bool? isSynced,
    DateTime? updatedAt,
  }) {
    return RecurringProfile(
      id: id ?? this.id,
      title: title ?? this.title,
      clientId: clientId ?? this.clientId,
      clientName: clientName ?? this.clientName,
      frequency: frequency ?? this.frequency,
      lineItems: lineItems ?? this.lineItems,
      subtotal: subtotal ?? this.subtotal,
      taxRate: taxRate ?? this.taxRate,
      taxAmount: taxAmount ?? this.taxAmount,
      total: total ?? this.total,
      currency: currency ?? this.currency,
      nextRunDate: nextRunDate ?? this.nextRunDate,
      invoiceDueDays: invoiceDueDays ?? this.invoiceDueDays,
      active: active ?? this.active,
      lastRunDate: lastRunDate ?? this.lastRunDate,
      notes: notes ?? this.notes,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      isSynced: isSynced ?? this.isSynced,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'clientId': clientId,
    'clientName': clientName,
    'frequency': frequency.toString().split('.').last,
    'lineItems': lineItems.map((i) => i.toJson()).toList(),
    'subtotal': subtotal,
    'taxRate': taxRate,
    'taxAmount': taxAmount,
    'total': total,
    'currency': currency,
    'nextRunDate': nextRunDate.toIso8601String(),
    'invoiceDueDays': invoiceDueDays,
    'active': active,
    'lastRunDate': lastRunDate?.toIso8601String(),
    'notes': notes,
    'paymentTerms': paymentTerms,
    'isSynced': isSynced,
    'updatedAt': updatedAt.toIso8601String(),
  };

  factory RecurringProfile.fromJson(Map<String, dynamic> j) =>
      RecurringProfile(
        id: j['id'],
        title: j['title'],
        clientId: j['clientId'],
        clientName: j['clientName'],
        frequency: _frequencyFrom(j['frequency'] ?? 'monthly'),
        lineItems: (j['lineItems'] as List)
            .map((i) => LineItem.fromJson(Map<String, dynamic>.from(i)))
            .toList(),
        subtotal: (j['subtotal'] as num).toDouble(),
        taxRate: (j['taxRate'] as num).toDouble(),
        taxAmount: (j['taxAmount'] as num).toDouble(),
        total: (j['total'] as num).toDouble(),
        currency: j['currency'] ?? 'AED',
        nextRunDate: DateTime.parse(j['nextRunDate']),
        invoiceDueDays: j['invoiceDueDays'] ?? 30,
        active: j['active'] ?? true,
        lastRunDate: j['lastRunDate'] != null
            ? DateTime.parse(j['lastRunDate'] as String)
            : null,
        notes: j['notes'],
        paymentTerms: j['paymentTerms'],
        isSynced: j['isSynced'] ?? false,
        updatedAt: j['updatedAt'] != null
            ? DateTime.parse(j['updatedAt'] as String)
            : DateTime.parse(j['nextRunDate'] as String),
      );

  static RecurrenceFrequency _frequencyFrom(String s) {
    switch (s) {
      case 'weekly':
        return RecurrenceFrequency.weekly;
      case 'biweekly':
        return RecurrenceFrequency.biweekly;
      case 'quarterly':
        return RecurrenceFrequency.quarterly;
      case 'yearly':
        return RecurrenceFrequency.yearly;
      default:
        return RecurrenceFrequency.monthly;
    }
  }
}
