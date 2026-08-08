import 'dart:ui';

/// Region-aware configuration for a business country.
///
/// Drives country-specific behavior: default currency, default tax rate, the
/// tax label printed on invoices (VAT/GST/Sales Tax), and the tax registration
/// number label (TRN/GSTIN/VAT No.).
class CountryConfig {
  const CountryConfig({
    required this.code,
    required this.name,
    required this.currency,
    required this.defaultTaxRate,
    this.taxLabel,
    this.taxIdLabel,
  });

  /// ISO 3166-1 alpha-2 country code, e.g. "AE".
  final String code;

  /// English display name, e.g. "United Arab Emirates".
  final String name;

  /// ISO 4217 currency code, e.g. "AED".
  final String currency;

  /// Default VAT/GST/sales-tax rate (percent) applied to new invoices.
  final double defaultTaxRate;

  /// Human-readable tax label, e.g. "VAT", "GST", "Sales Tax". `null` when
  /// the country has no value-added tax.
  final String? taxLabel;

  /// Label for the tax registration number, e.g. "TRN", "GSTIN",
  /// "VAT Registration No.". `null` when not applicable.
  final String? taxIdLabel;
}

/// Curated country registry with region-aware defaults.
class CountryConfigRegistry {
  static const List<CountryConfig> all = [
    // ─── GCC / Middle East & North Africa ───
    CountryConfig(
        code: 'AE',
        name: 'United Arab Emirates',
        currency: 'AED',
        defaultTaxRate: 5.0,
        taxLabel: 'VAT',
        taxIdLabel: 'TRN'),
    CountryConfig(
        code: 'SA',
        name: 'Saudi Arabia',
        currency: 'SAR',
        defaultTaxRate: 15.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT Reg. No.'),
    CountryConfig(
        code: 'QA',
        name: 'Qatar',
        currency: 'QAR',
        defaultTaxRate: 5.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT Reg. No.'),
    CountryConfig(
        code: 'KW', name: 'Kuwait', currency: 'KWD', defaultTaxRate: 0.0),
    CountryConfig(
        code: 'BH',
        name: 'Bahrain',
        currency: 'BHD',
        defaultTaxRate: 10.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT Reg. No.'),
    CountryConfig(
        code: 'OM',
        name: 'Oman',
        currency: 'OMR',
        defaultTaxRate: 5.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT Reg. No.'),
    CountryConfig(
        code: 'JO',
        name: 'Jordan',
        currency: 'JOD',
        defaultTaxRate: 16.0,
        taxLabel: 'Sales Tax',
        taxIdLabel: 'Tax No.'),
    CountryConfig(
        code: 'EG',
        name: 'Egypt',
        currency: 'EGP',
        defaultTaxRate: 14.0,
        taxLabel: 'VAT',
        taxIdLabel: 'Tax ID'),
    CountryConfig(
        code: 'MA',
        name: 'Morocco',
        currency: 'MAD',
        defaultTaxRate: 20.0,
        taxLabel: 'VAT',
        taxIdLabel: 'IF'),
    CountryConfig(
        code: 'TN',
        name: 'Tunisia',
        currency: 'TND',
        defaultTaxRate: 19.0,
        taxLabel: 'VAT',
        taxIdLabel: 'Matricule fiscal'),

    // ─── South Asia ───
    CountryConfig(
        code: 'PK',
        name: 'Pakistan',
        currency: 'PKR',
        defaultTaxRate: 17.0,
        taxLabel: 'Sales Tax',
        taxIdLabel: 'NTN'),
    CountryConfig(
        code: 'IN',
        name: 'India',
        currency: 'INR',
        defaultTaxRate: 18.0,
        taxLabel: 'GST',
        taxIdLabel: 'GSTIN'),
    CountryConfig(
        code: 'BD',
        name: 'Bangladesh',
        currency: 'BDT',
        defaultTaxRate: 15.0,
        taxLabel: 'VAT',
        taxIdLabel: 'BIN'),
    CountryConfig(
        code: 'NP',
        name: 'Nepal',
        currency: 'NPR',
        defaultTaxRate: 13.0,
        taxLabel: 'VAT',
        taxIdLabel: 'PAN'),

    // ─── Europe ───
    CountryConfig(
        code: 'GB',
        name: 'United Kingdom',
        currency: 'GBP',
        defaultTaxRate: 20.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT Reg. No.'),
    CountryConfig(
        code: 'FR',
        name: 'France',
        currency: 'EUR',
        defaultTaxRate: 20.0,
        taxLabel: 'VAT',
        taxIdLabel: 'SIRET'),
    CountryConfig(
        code: 'DE',
        name: 'Germany',
        currency: 'EUR',
        defaultTaxRate: 19.0,
        taxLabel: 'VAT',
        taxIdLabel: 'USt-IdNr.'),
    CountryConfig(
        code: 'ES',
        name: 'Spain',
        currency: 'EUR',
        defaultTaxRate: 21.0,
        taxLabel: 'IVA',
        taxIdLabel: 'NIF'),
    CountryConfig(
        code: 'IT',
        name: 'Italy',
        currency: 'EUR',
        defaultTaxRate: 22.0,
        taxLabel: 'IVA',
        taxIdLabel: 'P.IVA'),
    CountryConfig(
        code: 'NL',
        name: 'Netherlands',
        currency: 'EUR',
        defaultTaxRate: 21.0,
        taxLabel: 'BTW',
        taxIdLabel: 'BTW-nr'),
    CountryConfig(
        code: 'PT',
        name: 'Portugal',
        currency: 'EUR',
        defaultTaxRate: 23.0,
        taxLabel: 'IVA',
        taxIdLabel: 'NIF'),
    CountryConfig(
        code: 'BE',
        name: 'Belgium',
        currency: 'EUR',
        defaultTaxRate: 21.0,
        taxLabel: 'TVA',
        taxIdLabel: 'TVA/BTW'),
    CountryConfig(
        code: 'AT',
        name: 'Austria',
        currency: 'EUR',
        defaultTaxRate: 20.0,
        taxLabel: 'VAT',
        taxIdLabel: 'UID'),
    CountryConfig(
        code: 'IE',
        name: 'Ireland',
        currency: 'EUR',
        defaultTaxRate: 23.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT No.'),
    CountryConfig(
        code: 'GR',
        name: 'Greece',
        currency: 'EUR',
        defaultTaxRate: 24.0,
        taxLabel: 'VAT',
        taxIdLabel: 'ΑΦΜ'),
    CountryConfig(
        code: 'CH',
        name: 'Switzerland',
        currency: 'CHF',
        defaultTaxRate: 8.1,
        taxLabel: 'VAT',
        taxIdLabel: 'UID'),
    CountryConfig(
        code: 'SE',
        name: 'Sweden',
        currency: 'SEK',
        defaultTaxRate: 25.0,
        taxLabel: 'Moms',
        taxIdLabel: 'Org.nr'),
    CountryConfig(
        code: 'NO',
        name: 'Norway',
        currency: 'NOK',
        defaultTaxRate: 25.0,
        taxLabel: 'MVA',
        taxIdLabel: 'Org.nr'),
    CountryConfig(
        code: 'DK',
        name: 'Denmark',
        currency: 'DKK',
        defaultTaxRate: 25.0,
        taxLabel: 'Moms',
        taxIdLabel: 'CVR'),
    CountryConfig(
        code: 'PL',
        name: 'Poland',
        currency: 'PLN',
        defaultTaxRate: 23.0,
        taxLabel: 'VAT',
        taxIdLabel: 'NIP'),
    CountryConfig(
        code: 'CZ',
        name: 'Czech Republic',
        currency: 'CZK',
        defaultTaxRate: 21.0,
        taxLabel: 'VAT',
        taxIdLabel: 'DIČ'),
    CountryConfig(
        code: 'HU',
        name: 'Hungary',
        currency: 'HUF',
        defaultTaxRate: 27.0,
        taxLabel: 'ÁFA',
        taxIdLabel: 'Adószám'),
    CountryConfig(
        code: 'RO',
        name: 'Romania',
        currency: 'RON',
        defaultTaxRate: 19.0,
        taxLabel: 'TVA',
        taxIdLabel: 'CUI'),
    CountryConfig(
        code: 'TR',
        name: 'Turkey',
        currency: 'TRY',
        defaultTaxRate: 20.0,
        taxLabel: 'KDV',
        taxIdLabel: 'VKN'),

    // ─── Americas / Oceania ───
    CountryConfig(
        code: 'US',
        name: 'United States',
        currency: 'USD',
        defaultTaxRate: 0.0,
        taxLabel: 'Sales Tax'),
    CountryConfig(
        code: 'CA',
        name: 'Canada',
        currency: 'CAD',
        defaultTaxRate: 5.0,
        taxLabel: 'GST',
        taxIdLabel: 'GST/HST No.'),
    CountryConfig(
        code: 'MX',
        name: 'Mexico',
        currency: 'MXN',
        defaultTaxRate: 16.0,
        taxLabel: 'IVA',
        taxIdLabel: 'RFC'),
    CountryConfig(
        code: 'BR',
        name: 'Brazil',
        currency: 'BRL',
        defaultTaxRate: 0.0,
        taxLabel: 'ICMS',
        taxIdLabel: 'CNPJ'),
    CountryConfig(
        code: 'AR',
        name: 'Argentina',
        currency: 'ARS',
        defaultTaxRate: 21.0,
        taxLabel: 'IVA',
        taxIdLabel: 'CUIT'),
    CountryConfig(
        code: 'AU',
        name: 'Australia',
        currency: 'AUD',
        defaultTaxRate: 10.0,
        taxLabel: 'GST',
        taxIdLabel: 'ABN'),
    CountryConfig(
        code: 'NZ',
        name: 'New Zealand',
        currency: 'NZD',
        defaultTaxRate: 15.0,
        taxLabel: 'GST',
        taxIdLabel: 'GST No.'),
    CountryConfig(
        code: 'ZA',
        name: 'South Africa',
        currency: 'ZAR',
        defaultTaxRate: 15.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT No.'),

    // ─── East / Southeast Asia ───
    CountryConfig(
        code: 'SG',
        name: 'Singapore',
        currency: 'SGD',
        defaultTaxRate: 9.0,
        taxLabel: 'GST',
        taxIdLabel: 'GST Reg. No.'),
    CountryConfig(
        code: 'MY',
        name: 'Malaysia',
        currency: 'MYR',
        defaultTaxRate: 8.0,
        taxLabel: 'SST',
        taxIdLabel: 'SST No.'),
    CountryConfig(
        code: 'ID',
        name: 'Indonesia',
        currency: 'IDR',
        defaultTaxRate: 11.0,
        taxLabel: 'PPN',
        taxIdLabel: 'NPWP'),
    CountryConfig(
        code: 'PH',
        name: 'Philippines',
        currency: 'PHP',
        defaultTaxRate: 12.0,
        taxLabel: 'VAT',
        taxIdLabel: 'TIN'),
    CountryConfig(
        code: 'TH',
        name: 'Thailand',
        currency: 'THB',
        defaultTaxRate: 7.0,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT No.'),
    CountryConfig(
        code: 'VN',
        name: 'Vietnam',
        currency: 'VND',
        defaultTaxRate: 10.0,
        taxLabel: 'VAT',
        taxIdLabel: 'MST'),
    CountryConfig(
        code: 'CN',
        name: 'China',
        currency: 'CNY',
        defaultTaxRate: 13.0,
        taxLabel: 'VAT',
        taxIdLabel: 'Tax No.'),
    CountryConfig(
        code: 'HK', name: 'Hong Kong', currency: 'HKD', defaultTaxRate: 0.0),
    CountryConfig(
        code: 'TW',
        name: 'Taiwan',
        currency: 'TWD',
        defaultTaxRate: 5.0,
        taxLabel: 'VAT',
        taxIdLabel: 'GUI'),
    CountryConfig(
        code: 'JP',
        name: 'Japan',
        currency: 'JPY',
        defaultTaxRate: 10.0,
        taxLabel: 'Consumption Tax',
        taxIdLabel: 'Corp No.'),
    CountryConfig(
        code: 'KR',
        name: 'South Korea',
        currency: 'KRW',
        defaultTaxRate: 10.0,
        taxLabel: 'VAT',
        taxIdLabel: 'Biz. Reg. No.'),
    CountryConfig(
        code: 'NG',
        name: 'Nigeria',
        currency: 'NGN',
        defaultTaxRate: 7.5,
        taxLabel: 'VAT',
        taxIdLabel: 'VAT No.'),
    CountryConfig(
        code: 'KE',
        name: 'Kenya',
        currency: 'KES',
        defaultTaxRate: 16.0,
        taxLabel: 'VAT',
        taxIdLabel: 'KRA PIN'),
    CountryConfig(
        code: 'GH',
        name: 'Ghana',
        currency: 'GHS',
        defaultTaxRate: 15.0,
        taxLabel: 'VAT',
        taxIdLabel: 'TIN'),
  ];

  static final Map<String, CountryConfig> _byCode = {
    for (final c in all) c.code: c,
  };

  /// Language code -> default country when the locale has no (curated)
  /// country code. Covers the app's 6 supported languages.
  static const Map<String, String> _languageCountry = {
    'en': 'US',
    'ar': 'AE',
    'fr': 'FR',
    'es': 'ES',
    'ur': 'PK',
    'zh': 'CN',
    'de': 'DE',
    'it': 'IT',
    'nl': 'NL',
    'pt': 'BR',
    'pl': 'PL',
    'tr': 'TR',
    'id': 'ID',
    'hi': 'IN',
  };

  static CountryConfig? byCode(String code) {
    if (code.isEmpty) return null;
    return _byCode[code.toUpperCase()];
  }

  /// Suggests a business country from the device locale: prefers the locale's
  /// country code when curated, otherwise falls back by language, then [fallback].
  static String suggestCountryCode(Locale locale, {String fallback = 'US'}) {
    final cc = locale.countryCode?.toUpperCase() ?? '';
    if (cc.isNotEmpty && _byCode.containsKey(cc)) return cc;
    return _languageCountry[locale.languageCode.toLowerCase()] ?? fallback;
  }
}
