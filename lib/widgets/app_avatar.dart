import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_colors.dart';

/// Rounded gradient avatar showing initials, used across client/invoice UIs.
class AppAvatar extends StatelessWidget {
  final String initials;
  final double size;
  final Color? color;
  final double radius;

  const AppAvatar({
    Key? key,
    required this.initials,
    this.size = 48,
    this.color,
    this.radius = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final base = color ?? Theme.of(context).colorScheme.primary;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            base,
            Color.lerp(base, Colors.white, isDark ? 0.06 : 0.18)!,
          ],
        ),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: base.withValues(alpha: 0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          initials.isEmpty ? '?' : initials,
          style: TextStyle(
            fontSize: size * 0.36,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

/// Small colored dot used for status indicators.
class AppDot extends StatelessWidget {
  final Color color;
  final double size;
  const AppDot({Key? key, required this.color, this.size = 8})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.5),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}

/// Neutral icon avatar (used for logo placeholders, wallets, etc).
class AppIconAvatar extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final double radius;

  const AppIconAvatar({
    Key? key,
    required this.icon,
    this.color = AppColors.primaryBlue,
    this.size = 44,
    this.radius = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Icon(icon, size: size * 0.46, color: color),
    );
  }
}
