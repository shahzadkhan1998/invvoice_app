import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

/// Defaults the app currency from the device's locale/country on first launch,
/// while still letting the user change it later in Settings (persisted in
/// SharedPreferences under [defaultCurrencyKey]).
class CurrencyUtils {
  static const String defaultCurrencyKey = 'default_currency';

  /// Map of ISO country/region codes -> ISO currency codes.
  static const Map<String, String> _countryToCurrency = {
    'US': 'USD', 'PR': 'USD', 'VI': 'USD', 'GU': 'USD', 'AS': 'USD',
    'GB': 'GBP', 'IM': 'GBP', 'JE': 'GBP', 'GG': 'GBP',
    'EU': 'EUR', 'DE': 'EUR', 'FR': 'EUR', 'ES': 'EUR', 'IT': 'EUR',
    'NL': 'EUR', 'IE': 'EUR', 'PT': 'EUR', 'BE': 'EUR', 'AT': 'EUR',
    'GR': 'EUR', 'FI': 'EUR', 'LU': 'EUR', 'SK': 'EUR', 'SI': 'EUR',
    'EE': 'EUR', 'LV': 'EUR', 'LT': 'EUR', 'MT': 'EUR', 'CY': 'EUR',
    'AE': 'AED', 'SA': 'SAR', 'QA': 'QAR', 'KW': 'KWD', 'BH': 'BHD',
    'OM': 'OMR', 'JO': 'JOD', 'EG': 'EGP', 'LB': 'LBP', 'PK': 'PKR',
    'IN': 'INR', 'BD': 'BDT', 'NP': 'NPR',
    'AU': 'AUD', 'NZ': 'NZD', 'FJ': 'FJD', 'PG': 'PGK',
    'CA': 'CAD', 'MX': 'MXN',
    'CN': 'CNY', 'HK': 'HKD', 'TW': 'TWD', 'SG': 'SGD', 'MY': 'MYR',
    'JP': 'JPY', 'KR': 'KRW', 'TH': 'THB', 'ID': 'IDR', 'PH': 'PHP',
    'VN': 'VND', 'TR': 'TRY', 'BR': 'BRL', 'AR': 'ARS', 'CL': 'CLP',
    'CO': 'COP', 'ZA': 'ZAR', 'NG': 'NGN', 'KE': 'KES', 'GH': 'GHS',
    'CH': 'CHF', 'SE': 'SEK', 'NO': 'NOK', 'DK': 'DKK', 'PL': 'PLN',
    'CZ': 'CZK', 'HU': 'HUF', 'RO': 'RON', 'RU': 'RUB', 'UA': 'UAH',
    'IL': 'ILS', 'IR': 'IRR', 'IQ': 'IQD', 'MA': 'MAD', 'TN': 'TND',
    'DZ': 'DZD',
  };

  /// Returns the currency for a given locale, or [fallback] if unknown.
  static String currencyForLocale(Locale locale, {String fallback = 'USD'}) {
    final country = locale.countryCode?.toUpperCase() ?? '';
    if (country.isNotEmpty && _countryToCurrency.containsKey(country)) {
      return _countryToCurrency[country]!;
    }
    // Some languages imply a currency even without a country code.
    switch (locale.languageCode.toLowerCase()) {
      case 'en':
        return 'USD';
      case 'ar':
        return 'AED';
      case 'fr':
        return 'EUR';
      case 'es':
        return 'EUR';
      case 'ur':
        return 'PKR';
      case 'zh':
        return 'CNY';
      default:
        return fallback;
    }
  }

  /// Resolves the user's currency: the persisted preference if set,
  /// otherwise the device-locale-derived default.
  static Future<String> resolveDefaultCurrency({String fallback = 'USD'}) async {
    final prefs = await SharedPreferences.getInstance();
    final stored = prefs.getString(defaultCurrencyKey);
    if (stored != null && stored.isNotEmpty) return stored;
    final locale =
        PlatformDispatcher.instance.locale; // ignore: deprecated_member_use
    return currencyForLocale(locale, fallback: fallback);
  }

  /// Sets the locale-derived currency only if the user hasn't chosen one yet.
  static Future<void> ensureDefaultCurrencySet({String fallback = 'USD'}) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(defaultCurrencyKey)) return;
    final locale = PlatformDispatcher.instance.locale;
    final currency = currencyForLocale(locale, fallback: fallback);
    await prefs.setString(defaultCurrencyKey, currency);
  }
}
