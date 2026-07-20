import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persists the user's chosen UI language and exposes it so [MaterialApp]
/// can rebuild with the new [Locale].
class LocaleProvider with ChangeNotifier {
  static const String _key = 'app_locale';
  static const Locale _default = Locale('en');

  static const List<Locale> supported = [
    Locale('en'),
    Locale('ar'),
    Locale('fr'),
    Locale('es'),
    Locale('ur'),
    Locale('zh'),
  ];

  Locale _locale = _default;

  Locale get locale => _locale;

  LocaleProvider() {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_key);
    if (code != null && code.isNotEmpty) {
      _locale = Locale(code);
      notifyListeners();
    }
  }

  Future<void> setLocale(String languageCode) async {
    _locale = Locale(languageCode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, languageCode);
    notifyListeners();
  }
}
