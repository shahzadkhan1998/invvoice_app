import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/models/country_config.dart';
import '../core/utils/currency_utils.dart';

/// Persists the business country and tax registration number, and exposes the
/// matching [CountryConfig] so the app can adapt currency, default tax rate,
/// tax labels and compliance fields to the user's market.
class RegionProvider with ChangeNotifier {
  static const String countryKey = 'business_country';
  static const String taxIdKey = 'business_tax_id';

  String _countryCode = '';
  String _businessTaxId = '';

  CountryConfig? get config => CountryConfigRegistry.byCode(_countryCode);
  String get countryCode => _countryCode;
  String get businessTaxId => _businessTaxId;

  RegionProvider() {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    _countryCode = prefs.getString(countryKey) ??
        CountryConfigRegistry.suggestCountryCode(
          PlatformDispatcher.instance.locale, // ignore: deprecated_member_use
        );
    _businessTaxId = prefs.getString(taxIdKey) ?? '';
    notifyListeners();
  }

  /// Sets the business country. Also applies the country's currency as the
  /// default currency so the two can't drift apart.
  Future<void> setCountry(String code) async {
    _countryCode = code;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(countryKey, code);
    final cfg = config;
    if (cfg != null) {
      await prefs.setString(CurrencyUtils.defaultCurrencyKey, cfg.currency);
    }
    notifyListeners();
  }

  Future<void> setBusinessTaxId(String value) async {
    _businessTaxId = value.trim();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(taxIdKey, _businessTaxId);
    notifyListeners();
  }
}
