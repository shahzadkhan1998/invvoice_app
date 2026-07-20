import 'package:flutter/material.dart';

/// App color tokens.
///
/// The four "primary" tokens ([primary], [primaryDark], [primaryLight],
/// [primaryPale]) are dynamic: by default they use the brand blue, but they
/// can be overridden at runtime by the user via [ColorProvider] (see
/// [AppColors.applyDynamic]). Everything else is a fixed neutral/semantic
/// color.
class AppColors {
  // Default brand palette (used until the user picks a custom color).
  static const Color defaultPrimary = Color(0xFF2563EB);
  static const Color defaultPrimaryDark = Color(0xFF1E40AF);
  static const Color defaultPrimaryLight = Color(0xFF3B82F6);
  static const Color defaultPrimaryPale = Color(0xFFDCE8FF);

  static Color _primary = defaultPrimary;
  static Color _primaryDark = defaultPrimaryDark;
  static Color _primaryLight = defaultPrimaryLight;
  static Color _primaryPale = defaultPrimaryPale;

  /// Override the dynamic primary family from a single chosen base color.
  /// Computes a darker shade, a lighter shade, and a pale tint automatically.
  static void applyDynamic(Color base) {
    _primary = base;
    _primaryDark = _darken(base, 0.18);
    _primaryLight = _lighten(base, 0.12);
    _primaryPale = _tint(base, 0.86);
  }

  /// Reset to the default brand blue.
  static void resetDynamic() => applyDynamic(defaultPrimary);

  static Color get primary => _primary;
  static Color get primaryDark => _primaryDark;
  static Color get primaryLight => _primaryLight;
  static Color get primaryPale => _primaryPale;

  // Fixed const brand tokens (used directly across the UI). The app's dynamic
  // accent is driven through the ThemeData built from the getters above, so
  // these const defaults remain valid compile-time constants.
  static const primaryBlue = defaultPrimary;
  static const primaryBlueDark = defaultPrimaryDark;
  static const primaryBlueLight = defaultPrimaryLight;
  static const primaryBluePale = defaultPrimaryPale;

  // Semantic / fixed colors.
  static const successGreen = Color(0xFF10B981);
  static const warningAmber = Color(0xFFF59E0B);
  static const dangerRed = Color(0xFFEF4444);
  static const infoGray = Color(0xFF6B7280);
  static const gray50 = Color(0xFFF9FAFB);
  static const gray100 = Color(0xFFF3F4F6);
  static const gray200 = Color(0xFFE5E7EB);
  static const gray300 = Color(0xFFD1D5DB);
  static const gray400 = Color(0xFF9CA3AF);
  static const gray500 = Color(0xFF6B7280);
  static const gray600 = Color(0xFF4B5563);
  static const gray700 = Color(0xFF374151);
  static const gray800 = Color(0xFF1F2937);
  static const gray900 = Color(0xFF111827);
  static const bgPrimary = Color(0xFFFFFFFF);
  static const bgSecondary = Color(0xFFF9FAFB);
  static const darkBackground = Color(0xFF111827);
  static const darkSurface = Color(0xFF1F2937);
  static const darkText = Color(0xFFF9FAFB);

  // ---- color math helpers ----
  static Color _darken(Color c, double amount) {
    final f = 1 - amount;
    return Color.fromARGB(
      c.alpha,
      (c.red * f).round().clamp(0, 255),
      (c.green * f).round().clamp(0, 255),
      (c.blue * f).round().clamp(0, 255),
    );
  }

  static Color _lighten(Color c, double amount) {
    return Color.fromARGB(
      c.alpha,
      (c.red + (255 - c.red) * amount).round().clamp(0, 255),
      (c.green + (255 - c.green) * amount).round().clamp(0, 255),
      (c.blue + (255 - c.blue) * amount).round().clamp(0, 255),
    );
  }

  static Color _tint(Color c, double amount) {
    return Color.fromARGB(
      c.alpha,
      (c.red + (255 - c.red) * amount).round().clamp(0, 255),
      (c.green + (255 - c.green) * amount).round().clamp(0, 255),
      (c.blue + (255 - c.blue) * amount).round().clamp(0, 255),
    );
  }
}
