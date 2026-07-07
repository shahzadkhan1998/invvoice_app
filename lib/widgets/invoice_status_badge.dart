import 'package:flutter/material.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../models/invoice.dart';
import '../core/theme/app_colors.dart';

class InvoiceStatusBadge extends StatelessWidget {
  final InvoiceStatus status;
  final bool compact;

  const InvoiceStatusBadge({
    Key? key,
    required this.status,
    this.compact = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = _statusColor(status);
    final l10n = AppLocalizations.of(context)!;
    final label = switch (status) {
      InvoiceStatus.paid => l10n.statusPaid,
      InvoiceStatus.overdue => l10n.statusOverdue,
      InvoiceStatus.sent => l10n.statusPending,
      InvoiceStatus.draft => l10n.statusDraft,
      InvoiceStatus.cancelled => l10n.statusCancelled,
    };
    final icon = _statusIcon(status);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 8 : 10,
        vertical: compact ? 3 : 5,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: compact ? 10 : 12),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: compact ? 10 : 11,
              color: color,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }

  Color _statusColor(InvoiceStatus status) {
    switch (status) {
      case InvoiceStatus.paid:
        return AppColors.successGreen;
      case InvoiceStatus.overdue:
        return AppColors.dangerRed;
      case InvoiceStatus.sent:
        return AppColors.warningAmber;
      case InvoiceStatus.draft:
        return AppColors.infoGray;
      case InvoiceStatus.cancelled:
        return AppColors.gray400;
    }
  }

  IconData _statusIcon(InvoiceStatus status) {
    switch (status) {
      case InvoiceStatus.paid:
        return Icons.check_circle_outline;
      case InvoiceStatus.overdue:
        return Icons.warning_amber_outlined;
      case InvoiceStatus.sent:
        return Icons.schedule_outlined;
      case InvoiceStatus.draft:
        return Icons.edit_outlined;
      case InvoiceStatus.cancelled:
        return Icons.cancel_outlined;
    }
  }
}
