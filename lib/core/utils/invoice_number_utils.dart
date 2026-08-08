import 'package:shared_preferences/shared_preferences.dart';

/// Manages the invoice number prefix (e.g. "INV-") and a monotonic sequence
/// counter with cached values so invoice numbering can read them
/// synchronously, persisted in SharedPreferences.
class InvoiceNumberUtils {
  static const String prefixKey = 'invoice_prefix';
  static const String counterKey = 'invoice_counter';
  static const String defaultPrefix = 'INV-';
  static String _prefix = defaultPrefix;
  static int _counter = 0;

  static String get prefix => _prefix;
  static int get counter => _counter;

  static Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final stored = prefs.getString(prefixKey);
    if (stored != null && stored.trim().isNotEmpty) {
      _prefix = stored.trim();
    }
    _counter = prefs.getInt(counterKey) ?? 0;
  }

  static Future<void> setPrefix(String value) async {
    _prefix = value.trim().isEmpty ? defaultPrefix : value.trim();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefixKey, _prefix);
  }

  /// Increments the persisted counter and returns the next sequence number.
  /// The write is fire-and-forget so callers can read the value synchronously.
  static int next() {
    _counter++;
    SharedPreferences.getInstance().then((p) => p.setInt(counterKey, _counter));
    return _counter;
  }

  /// Ensures the counter is at least [value] so numbering never collides with
  /// existing invoice numbers (e.g. after loading records created before the
  /// counter existed, or imported data).
  static void ensureAtLeast(int value) {
    if (value <= _counter) return;
    _counter = value;
    SharedPreferences.getInstance().then((p) => p.setInt(counterKey, _counter));
  }
}
