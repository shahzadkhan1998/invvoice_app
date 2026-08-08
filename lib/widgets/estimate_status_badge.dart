import 'package:flutter/material.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../models/estimate.dart';
import '../core/theme/app_colors.dart';

class EstimateStatusBadge extends StatelessWidget {
  final EstimateStatus status;
  final bool compact;

  const EstimateStatusBadge({
    super.key,
    required this.status,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = _statusColor(status, context);
    final l10n = AppLocalizations.of(context)!;
    final label = switch (status) {
      EstimateStatus.draft => l10n.statusDraft,
      EstimateStatus.sent => l10n.estimateStatusSent,
      EstimateStatus.accepted => l10n.estimateStatusAccepted,
      EstimateStatus.declined => l10n.estimateStatusDeclined,
      EstimateStatus.expired => l10n.estimateStatusExpired,
    };
    final icon = _statusIcon(status);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 8 : 10,
        vertical: compact ? 3 : 5,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.3), width: 1),
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

  Color _statusColor(EstimateStatus status, BuildContext context) {
    switch (status) {
      case EstimateStatus.accepted:
        return AppColors.successGreen;
      case EstimateStatus.declined:
        return AppColors.dangerRed;
      case EstimateStatus.sent:
        return AppColors.warningAmber;
      case EstimateStatus.draft:
        return AppColors.infoGray;
      case EstimateStatus.expired:
        return Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5);
    }
  }

  IconData _statusIcon(EstimateStatus status) {
    switch (status) {
      case EstimateStatus.accepted:
        return Icons.check_circle_outline;
      case EstimateStatus.declined:
        return Icons.cancel_outlined;
      case EstimateStatus.sent:
        return Icons.schedule_outlined;
      case EstimateStatus.draft:
        return Icons.edit_outlined;
      case EstimateStatus.expired:
        return Icons.history_rounded;
    }
  }
}
