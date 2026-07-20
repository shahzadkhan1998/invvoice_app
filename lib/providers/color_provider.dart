import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/theme/app_colors.dart';

/// Lets the user personalize the app's accent color. The chosen color is
/// persisted and applied to [AppColors] so the entire UI recolors live.
class ColorProvider with ChangeNotifier {
  static const String _key = 'accent_color';

  /// Curated preset accent colors (includes the original brand blue).
  static const List<Color> presets = [
    Color(0xFF2563EB), // Brand blue
    Color(0xFF7C3AED), // Violet
    Color(0xFFDB2777), // Pink
    Color(0xFFDC2626), // Red
    Color(0xFFEA580C), // Orange
    Color(0xFFD97706), // Amber
    Color(0xFF059669), // Emerald
    Color(0xFF0891B2), // Cyan
    Color(0xFF0D9488), // Teal
    Color(0xFF4F46E5), // Indigo
    Color(0xFF9333EA), // Purple
    Color(0xFF111827), // Near black
  ];

  Color _accent = AppColors.defaultPrimary;

  Color get accent => _accent;

  ColorProvider() {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt(_key);
    if (value != null) {
      _accent = Color(value);
      AppColors.applyDynamic(_accent);
      notifyListeners();
    }
  }

  Future<void> setAccent(Color color) async {
    _accent = color;
    AppColors.applyDynamic(color);
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key, color.value);
  }
}
