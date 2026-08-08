import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A selectable app language with its native display name.
class AppLanguage {
  final String code;
  final String nativeName;

  const AppLanguage(this.code, this.nativeName);

  Locale get locale => Locale(code);
}

/// Persists the user's chosen UI language and exposes it so [MaterialApp]
/// can rebuild with the new [Locale].
class LocaleProvider with ChangeNotifier {
  static const String _key = 'app_locale';
  static const Locale _default = Locale('en');

  static const List<AppLanguage> languages = [
    AppLanguage('en', 'English'),
    AppLanguage('ar', 'العربية'),
    AppLanguage('fr', 'Français'),
    AppLanguage('es', 'Español'),
    AppLanguage('ur', 'اردو'),
    AppLanguage('zh', '中文'),
    AppLanguage('de', 'Deutsch'),
    AppLanguage('it', 'Italiano'),
    AppLanguage('pt', 'Português'),
    AppLanguage('nl', 'Nederlands'),
    AppLanguage('ru', 'Русский'),
    AppLanguage('ja', '日本語'),
    AppLanguage('ko', '한국어'),
    AppLanguage('hi', 'हिन्दी'),
    AppLanguage('tr', 'Türkçe'),
    AppLanguage('id', 'Bahasa Indonesia'),
    AppLanguage('vi', 'Tiếng Việt'),
    AppLanguage('th', 'ไทย'),
    AppLanguage('pl', 'Polski'),
    AppLanguage('uk', 'Українська'),
    AppLanguage('cs', 'Čeština'),
    AppLanguage('el', 'Ελληνικά'),
    AppLanguage('he', 'עברית'),
    AppLanguage('fa', 'فارسی'),
    AppLanguage('sv', 'Svenska'),
    AppLanguage('no', 'Norsk'),
    AppLanguage('da', 'Dansk'),
    AppLanguage('fi', 'Suomi'),
    AppLanguage('hu', 'Magyar'),
    AppLanguage('ro', 'Română'),
    AppLanguage('bg', 'Български'),
    AppLanguage('hr', 'Hrvatski'),
    AppLanguage('sk', 'Slovenčina'),
    AppLanguage('lt', 'Lietuvių'),
    AppLanguage('et', 'Eesti'),
    AppLanguage('ms', 'Bahasa Melayu'),
    AppLanguage('ta', 'தமிழ்'),
    AppLanguage('bn', 'বাংলা'),
    AppLanguage('km', 'ខ្មែរ'),
    AppLanguage('te', 'తెలుగు'),
  ];

  static final List<Locale> supported = [
    for (final language in languages) language.locale,
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
