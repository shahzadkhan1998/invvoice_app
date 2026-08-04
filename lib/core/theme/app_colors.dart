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

  // ─── Semantic / status colors ───
  static const successGreen = Color(0xFF10B981);
  static const successGreenDark = Color(0xFF0E9F6E);
  static const warningAmber = Color(0xFFF59E0B);
  static const dangerRed = Color(0xFFEF4444);
  static const dangerRedDark = Color(0xFFDC2626);
  static const infoGray = Color(0xFF6B7280);

  // ─── Legacy grays (kept for compatibility) ───
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

  // Legacy surface tokens (kept for compatibility).
  static const bgPrimary = Color(0xFFFFFFFF);
  static const bgSecondary = Color(0xFFF9FAFB);
  static const darkText = Color(0xFFF9FAFB);

  // ─── Premium surface / text tokens ───
  // Light mode.
  static const lightBackground = Color(0xFFF5F6FA);
  static const lightSurface = Color(0xFFFFFFFF);
  static const lightSurfaceMuted = Color(0xFFF1F3F9);
  static const lightBorder = Color(0xFFE7E9F2);
  static const lightTextPrimary = Color(0xFF0C1220);
  static const lightTextSecondary = Color(0xFF566078);
  static const lightTextMuted = Color(0xFF98A1B3);

  // Dark mode.
  static const darkBackground = Color(0xFF0A0E17);
  static const darkSurface = Color(0xFF141B28);
  static const darkSurfaceMuted = Color(0xFF1C2434);
  static const darkBorder = Color(0xFF272F42);
  static const darkTextPrimary = Color(0xFFF2F4F8);
  static const darkTextSecondary = Color(0xFFA6AFC2);
  static const darkTextMuted = Color(0xFF69728A);

  // ─── Premium shadow tokens ───
  static const Color shadowColor = Color(0xFF1F2A44);

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
