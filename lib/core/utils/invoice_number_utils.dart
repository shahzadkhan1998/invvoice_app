import 'package:shared_preferences/shared_preferences.dart';

/// Manages the invoice number prefix (e.g. "INV-") with a cached value so
/// invoice numbering can read it synchronously, persisted in SharedPreferences
/// under [prefixKey].
class InvoiceNumberUtils {
  static const String prefixKey = 'invoice_prefix';
  static const String defaultPrefix = 'INV-';
  static String _prefix = defaultPrefix;

  static String get prefix => _prefix;

  static Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final stored = prefs.getString(prefixKey);
    if (stored != null && stored.trim().isNotEmpty) {
      _prefix = stored.trim();
    }
  }

  static Future<void> setPrefix(String value) async {
    _prefix = value.trim().isEmpty ? defaultPrefix : value.trim();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefixKey, _prefix);
  }
}
