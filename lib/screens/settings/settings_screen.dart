import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:in_app_review/in_app_review.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/auth_provider.dart';
import '../../providers/theme_provider.dart';
import '../../providers/revenuecat_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/currency_utils.dart';
import '../../core/utils/invoice_number_utils.dart';
import '../../services/notification_service.dart';
import '../../services/pdf_service.dart';
import '../../providers/color_provider.dart';
import '../../providers/locale_provider.dart';
import '../../providers/region_provider.dart';
import '../../providers/catalog_provider.dart';
import '../../providers/estimate_provider.dart';
import '../../providers/recurring_provider.dart';
import '../../core/models/country_config.dart';
import 'catalog_screen.dart';
import '../estimates/estimate_list_screen.dart';
import '../recurring/recurring_list_screen.dart';
import '../reports/reports_screen.dart';
import '../../services/customer_center_service.dart';
import 'paywall_screen.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _businessName = '';
  String _businessEmail = '';
  String _businessPhone = '';
  String _businessAddress = '';
  String _paymentLink = '';
  String _defaultCurrency = 'USD';
  String _invoicePrefix = InvoiceNumberUtils.defaultPrefix;
  PdfTemplate _pdfTemplate = PdfTemplate.modern;
  TimeOfDay? _notificationTime;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _businessName = prefs.getString('business_name') ?? '';
      _businessEmail = prefs.getString('business_email') ?? '';
      _businessPhone = prefs.getString('business_phone') ?? '';
      _businessAddress = prefs.getString('business_address') ?? '';
      _paymentLink = prefs.getString('payment_link') ?? '';
      _defaultCurrency = prefs.getString(CurrencyUtils.defaultCurrencyKey) ??
          CurrencyUtils.currencyForLocale(PlatformDispatcher.instance.locale);
      _invoicePrefix = InvoiceNumberUtils.prefix;
      _pdfTemplate =
          PdfService.templateFromString(prefs.getString('pdf_template'));
      final timeStr = prefs.getString('notification_time');
      if (timeStr != null) {
        final parts = timeStr.split(':');
        if (parts.length == 2) {
          _notificationTime =
              TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    final themeProvider = context.watch<ThemeProvider>();
    final region = context.watch<RegionProvider>();
    final catalog = context.watch<CatalogProvider>();
    final estimates = context.watch<EstimateProvider>();
    final recurring = context.watch<RecurringProvider>();
    final isDark = themeProvider.themeMode == ThemeMode.dark;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsTitle)),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDark
                ? [AppColors.darkBackground, Theme.of(context).scaffoldBackgroundColor]
                : [AppColors.lightSurfaceMuted, Theme.of(context).scaffoldBackgroundColor],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            if (auth.isAuthenticated)
              _ProfileCard(
                name: auth.currentUser?.displayName ?? '',
                email: auth.currentUser?.email ?? '',
                businessName: _businessName,
                onTap: () => _showProfileEditor(context),
              )
            else
              _SignInCard(
                onSignIn: () => Navigator.pushNamed(context, '/login'),
              ),
            const SizedBox(height: 20),
            _SubscriptionCard(
              isPro: context.watch<RevenueCatProvider>().isPro,
              onUpgrade: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PaywallScreen()),
              ),
              onManage: () async {
                final ok = await CustomerCenterService.present(context);
                if (!ok && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(l10n.customerCenterFailed),
                    ),
                  );
                }
              },
              onRestore: () async {
                final rc = context.read<RevenueCatProvider>();
                final restored = await rc.restorePurchases();
                if (context.mounted) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(
                          restored
                              ? l10n.purchaseRestored
                              : l10n.purchaseErrorGeneric,
                        ),
                      ),
                    );
                }
              },
            ),
            const SizedBox(height: 24),
            _SectionHeader(title: l10n.settingsBusinessSection),
            const SizedBox(height: 8),
            _SettingsGroup(items: [
              _SettingsTile(
                icon: Icons.business_outlined,
                title: l10n.settingsBusinessDetails,
                subtitle: _businessName.isEmpty
                    ? l10n.settingsBusinessDetailsSubtitle
                    : _businessName,
                onTap: () => _showBusinessEditor(context),
              ),
              _SettingsTile(
                icon: Icons.public_rounded,
                title: l10n.settingsCountry,
                subtitle: region.config?.name ?? region.countryCode,
                onTap: () => _showCountryPicker(context),
              ),
              _SettingsTile(
                icon: Icons.assignment_outlined,
                title: l10n.settingsTaxId,
                subtitle: region.businessTaxId.isEmpty
                    ? l10n.settingsTaxIdNotSet
                    : region.businessTaxId,
                onTap: () => _showTaxIdEditor(context),
              ),
              _SettingsTile(
                icon: Icons.link_rounded,
                title: l10n.paymentLinkTitle,
                subtitle: _paymentLink.isEmpty
                    ? l10n.settingsPaymentLinkNotSet
                    : _paymentLink,
                onTap: () => _showPaymentLinkEditor(context),
              ),
              _SettingsTile(
                icon: Icons.inventory_2_outlined,
                title: l10n.catalogTitle,
                subtitle: l10n.catalogItemCount(catalog.items.length),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CatalogScreen()),
                ),
              ),
              _SettingsTile(
                icon: Icons.request_quote_outlined,
                title: l10n.estimateListTitle,
                subtitle:
                    l10n.estimateOpenCount(estimates.openEstimates.length),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const EstimateListScreen()),
                ),
              ),
              _SettingsTile(
                icon: Icons.event_repeat_outlined,
                title: l10n.recurringListTitle,
                subtitle:
                    l10n.recurringActiveCount(recurring.activeProfiles.length),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const RecurringListScreen()),
                ),
              ),
              _SettingsTile(
                icon: Icons.insert_chart_outlined,
                title: l10n.reportsTitle,
                subtitle: l10n.reportsSubtitle,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ReportsScreen()),
                ),
              ),
              _SettingsTile(
                icon: Icons.receipt_long_outlined,
                title: l10n.settingsInvoicePrefix,
                subtitle: _invoicePrefix,
                onTap: () => _showInvoicePrefixEditor(context),
              ),
              _SettingsTile(
                icon: Icons.attach_money,
                title: l10n.settingsDefaultCurrency,
                subtitle: _defaultCurrency,
                onTap: () => _showCurrencyPicker(context),
              ),
              _SettingsTile(
                icon: Icons.design_services_outlined,
                title: 'PDF Template',
                subtitle: _pdfTemplateName(_pdfTemplate),
                onTap: () => _showPdfTemplatePicker(context),
              ),
            ]),
            const SizedBox(height: 20),
            _SectionHeader(title: l10n.settingsAppSection),
            const SizedBox(height: 8),
            _SettingsGroup(items: [
              _SettingsTile(
                icon: isDark
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined,
                title: l10n.settingsDarkMode,
                trailing: Switch(
                  value: isDark,
                  onChanged: (_) => themeProvider.toggleTheme(),
                ),
              ),
              _ColorTile(
                title: l10n.settingsAccentColor,
                onTap: () => _showColorPicker(context),
              ),
              _SettingsTile(
                icon: Icons.notifications_outlined,
                title: l10n.settingsDailyNotification,
                subtitle: _notificationTime != null
                    ? 'Every day at ${_notificationTime!.format(context)}'
                    : l10n.settingsDailyNotificationNotSet,
                onTap: () => _showNotificationTimePicker(context),
              ),
              _SettingsTile(
                icon: Icons.language_outlined,
                title: l10n.settingsLanguage,
                subtitle: l10n.settingsLanguageLabel,
                onTap: () => _showLanguagePicker(context),
              ),
            ]),
            const SizedBox(height: 20),
            _SectionHeader(title: l10n.settingsAboutSection),
            const SizedBox(height: 8),
            _SettingsGroup(items: [
              _SettingsTile(
                icon: Icons.star_outline,
                title: l10n.settingsRateApp,
                onTap: () async {
                  final review = InAppReview.instance;
                  if (await review.isAvailable()) {
                    review.openStoreListing();
                  }
                },
              ),
              _SettingsTile(
                icon: Icons.help_outline,
                title: l10n.settingsHelpSupport,
                onTap: () => _showInfoSheet(
                  context,
                  icon: Icons.help_outline,
                  title: l10n.settingsHelpSupport,
                  body: l10n.settingsHelpSupportSheet,
                ),
              ),
              _SettingsTile(
                icon: Icons.privacy_tip_outlined,
                title: l10n.settingsPrivacyPolicy,
                onTap: () => _showInfoSheet(
                  context,
                  icon: Icons.privacy_tip_outlined,
                  title: l10n.settingsPrivacyPolicy,
                  body: l10n.settingsPrivacySheet,
                ),
              ),
              _SettingsTile(
                icon: Icons.info_outline,
                title: l10n.settingsVersion,
                subtitle: l10n.settingsVersionNumber,
              ),
            ]),
            const SizedBox(height: 20),
            if (auth.isAuthenticated)
              SizedBox(
                width: double.infinity,
                height: 52,
                child: OutlinedButton.icon(
                  onPressed: () => _confirmSignOut(context),
                  icon: const Icon(Icons.logout_rounded,
                      color: AppColors.dangerRed),
                  label: Text(
                    l10n.settingsSignOut,
                    style: const TextStyle(
                      color: AppColors.dangerRed,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.dangerRed),
                  ),
                ),
              ),
            const SizedBox(height: 40),
          ],
          ),
        ),
      ),
    );
  }

  void _showProfileEditor(BuildContext context) {
    final auth = context.read<AuthProvider>();
    final nameCtrl =
        TextEditingController(text: auth.currentUser?.displayName ?? '');

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 8,
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(l10n.settingsEditProfile,
                      style: Theme.of(ctx).textTheme.titleLarge),
                  IconButton(
                    onPressed: () => Navigator.pop(ctx),
                    icon: const Icon(Icons.close_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(l10n.settingsProfileNameLabel,
                  style: Theme.of(ctx).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(ctx).colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      )),
              const SizedBox(height: 8),
              TextField(
                controller: nameCtrl,
                decoration:
                    InputDecoration(hintText: l10n.settingsProfileNameHint),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton(
                  onPressed: () async {
                    final name = nameCtrl.text.trim();
                    if (name.isEmpty) return;
                    await auth.updateDisplayName(name);
                    if (ctx.mounted) Navigator.pop(ctx);
                  },
                  child: Text(l10n.commonSaveChanges),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showBusinessEditor(BuildContext context) {
    final nameCtrl = TextEditingController(text: _businessName);
    final emailCtrl = TextEditingController(text: _businessEmail);
    final phoneCtrl = TextEditingController(text: _businessPhone);
    final addressCtrl = TextEditingController(text: _businessAddress);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 8,
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(l10n.settingsBusinessDetails,
                        style: Theme.of(ctx).textTheme.titleLarge),
                    IconButton(
                        onPressed: () => Navigator.pop(ctx),
                        icon: const Icon(Icons.close_rounded)),
                  ],
                ),
                const SizedBox(height: 16),
                _sheetLabel(ctx, l10n.settingsBusinessNameLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: nameCtrl,
                  decoration:
                      InputDecoration(hintText: l10n.settingsBusinessNameHint),
                ),
                const SizedBox(height: 12),
                _sheetLabel(ctx, l10n.settingsBusinessEmailLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      InputDecoration(hintText: l10n.settingsBusinessEmailHint),
                ),
                const SizedBox(height: 12),
                _sheetLabel(ctx, l10n.settingsPhoneLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: phoneCtrl,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: l10n.settingsPhoneHint),
                ),
                const SizedBox(height: 12),
                _sheetLabel(ctx, l10n.settingsAddressLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: addressCtrl,
                  decoration:
                      InputDecoration(hintText: l10n.settingsAddressHint),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledButton(
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString(
                          'business_name', nameCtrl.text.trim());
                      await prefs.setString(
                          'business_email', emailCtrl.text.trim());
                      await prefs.setString(
                          'business_phone', phoneCtrl.text.trim());
                      await prefs.setString(
                          'business_address', addressCtrl.text.trim());

                      if (!mounted) return;
                      setState(() {
                        _businessName = nameCtrl.text.trim();
                        _businessEmail = emailCtrl.text.trim();
                        _businessPhone = phoneCtrl.text.trim();
                        _businessAddress = addressCtrl.text.trim();
                      });
                      if (ctx.mounted) Navigator.pop(ctx);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(AppLocalizations.of(context)!
                              .settingsBusinessDetailsSaved),
                          backgroundColor: AppColors.successGreen,
                        ),
                      );
                    },
                    child: Text(l10n.commonSaveChanges),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showCountryPicker(BuildContext context) {
    final region = context.read<RegionProvider>();
    final current = region.countryCode;
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.settingsCountry),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: CountryConfigRegistry.all.length,
            separatorBuilder: (c, i) => const Divider(),
            itemBuilder: (c, i) {
              final cfg = CountryConfigRegistry.all[i];
              final selected = cfg.code == current;
              final taxInfo = cfg.taxLabel != null
                  ? ' • ${cfg.taxLabel} ${cfg.defaultTaxRate.toStringAsFixed(0)}%'
                  : '';
              return ListTile(
                title: Text(cfg.name,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text('${cfg.currency}$taxInfo'),
                trailing: selected
                    ? Icon(Icons.check_rounded,
                        color: Theme.of(ctx).colorScheme.primary)
                    : null,
                onTap: () async {
                  await region.setCountry(cfg.code);
                  if (!ctx.mounted) return;
                  Navigator.pop(ctx);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void _showTaxIdEditor(BuildContext context) {
    final region = context.read<RegionProvider>();
    final ctrl = TextEditingController(text: region.businessTaxId);
    final l10n = AppLocalizations.of(context)!;
    final taxIdLabel = region.config?.taxIdLabel;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.settingsTaxId),
        content: TextField(
          controller: ctrl,
          autofocus: true,
          decoration: InputDecoration(
            hintText: taxIdLabel != null
                ? '$taxIdLabel • ${l10n.settingsTaxIdHint}'
                : l10n.settingsTaxIdHint,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.commonCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(minimumSize: const Size(80, 40)),
            onPressed: () async {
              await region.setBusinessTaxId(ctrl.text);
              if (!ctx.mounted) return;
              Navigator.pop(ctx);
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(l10n.settingsTaxIdSaved),
                    backgroundColor: AppColors.successGreen,
                  ),
                );
              }
            },
            child: Text(l10n.commonSave),
          ),
        ],
      ),
    );
  }

  void _showPaymentLinkEditor(BuildContext context) {
    final ctrl = TextEditingController(text: _paymentLink);
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.paymentLinkTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: ctrl,
              autofocus: true,
              keyboardType: TextInputType.url,
              decoration: InputDecoration(
                hintText: l10n.paymentLinkHint,
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                l10n.paymentLinkHelp,
                style: Theme.of(ctx).textTheme.bodySmall?.copyWith(
                      color: Theme.of(ctx).colorScheme.onSurfaceVariant,
                    ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.commonCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(minimumSize: const Size(80, 40)),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              await prefs.setString('payment_link', ctrl.text.trim());
              if (!mounted) return;
              setState(() => _paymentLink = ctrl.text.trim());
              if (ctx.mounted) Navigator.pop(ctx);
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(l10n.paymentLinkSaved),
                    backgroundColor: AppColors.successGreen,
                  ),
                );
              }
            },
            child: Text(l10n.commonSave),
          ),
        ],
      ),
    );
  }

  void _showCurrencyPicker(BuildContext context) {
    final currencies = ['USD', 'EUR', 'GBP', 'AED', 'INR', 'AUD', 'CAD'];
    showDialog(
      context: context,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          title: Text(l10n.settingsDefaultCurrency),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: currencies.length,
              separatorBuilder: (c, i) => const Divider(),
              itemBuilder: (c, i) => ListTile(
                title: Text(currencies[i],
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                trailing: _defaultCurrency == currencies[i]
                    ? Icon(Icons.check_rounded,
                        color: Theme.of(ctx).colorScheme.primary)
                    : null,
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString(
                      CurrencyUtils.defaultCurrencyKey, currencies[i]);
                  if (!c.mounted) return;
                  setState(() => _defaultCurrency = currencies[i]);
                  Navigator.pop(ctx);
                },
              ),
            ),
          ),
        );
      },
    );
  }

  String _pdfTemplateName(PdfTemplate template) {
    switch (template) {
      case PdfTemplate.minimal:
        return 'Minimal';
      case PdfTemplate.classic:
        return 'Classic';
      case PdfTemplate.modern:
        return 'Modern';
    }
  }

  void _showPdfTemplatePicker(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('PDF Template', style: Theme.of(ctx).textTheme.titleLarge),
                IconButton(
                  onPressed: () => Navigator.pop(ctx),
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Choose a free layout for your invoice and estimate PDFs.',
              style: Theme.of(ctx).textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 12),
            ...PdfTemplate.values.map((t) {
              final selected = _pdfTemplate == t;
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setString('pdf_template', t.name);
                    if (!mounted) return;
                    setState(() => _pdfTemplate = t);
                    if (ctx.mounted) Navigator.pop(ctx);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: scheme.surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color:
                            selected ? scheme.primary : scheme.outlineVariant,
                        width: selected ? 2 : 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: scheme.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Icon(
                            t == PdfTemplate.minimal
                                ? Icons.article_outlined
                                : t == PdfTemplate.classic
                                    ? Icons.menu_book_outlined
                                    : Icons.auto_awesome_outlined,
                            size: 20,
                            color: scheme.primary,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _pdfTemplateName(t),
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                _pdfTemplateDescription(t),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (selected)
                          Icon(Icons.check_circle_rounded,
                              color: scheme.primary, size: 22),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  String _pdfTemplateDescription(PdfTemplate template) {
    switch (template) {
      case PdfTemplate.minimal:
        return 'Clean and simple, monochrome with thin rules';
      case PdfTemplate.classic:
        return 'Traditional centered title with double rules';
      case PdfTemplate.modern:
        return 'Bold accent colors and rounded cards';
    }
  }

  Future<void> _showNotificationTimePicker(BuildContext context) async {
    final time = await showTimePicker(
      context: context,
      initialTime: _notificationTime ?? const TimeOfDay(hour: 9, minute: 0),
    );
    if (time == null || !mounted) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('notification_time', '${time.hour}:${time.minute}');
    setState(() => _notificationTime = time);
    await NotificationService().scheduleDailyNotification(time: time);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                AppLocalizations.of(context)!.settingsNotificationScheduled)),
      );
    }
  }

  void _showColorPicker(BuildContext context) {
    final colorProvider = context.read<ColorProvider>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return StatefulBuilder(
          builder: (ctx, setSheetState) {
            return Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 8,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(l10n.settingsAccentColor,
                          style: Theme.of(ctx).textTheme.titleLarge),
                      IconButton(
                        onPressed: () => Navigator.pop(ctx),
                        icon: const Icon(Icons.close_rounded),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(l10n.settingsAccentColorHint,
                      style: Theme.of(ctx).textTheme.bodySmall?.copyWith(
                            color: Theme.of(ctx).colorScheme.onSurfaceVariant,
                          )),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 14,
                    runSpacing: 14,
                    children: [
                      ...ColorProvider.presets.map((c) {
                        final selected =
                            colorProvider.accent.toARGB32() == c.toARGB32();
                        return GestureDetector(
                          onTap: () {
                            colorProvider.setAccent(c);
                            setSheetState(() {});
                          },
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: c,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: selected
                                    ? Theme.of(ctx).colorScheme.onSurface
                                    : Colors.transparent,
                                width: 3,
                              ),
                              boxShadow: selected
                                  ? [
                                      BoxShadow(
                                        color: c.withValues(alpha: 0.5),
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                      )
                                    ]
                                  : null,
                            ),
                            child: selected
                                ? const Icon(Icons.check_rounded,
                                    color: Colors.white, size: 22)
                                : null,
                          ),
                        );
                      }),
                      GestureDetector(
                        onTap: () => _showCustomColorPicker(
                            ctx, colorProvider, setSheetState),
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Theme.of(ctx).colorScheme.outline,
                                width: 2),
                            gradient: const SweepGradient(
                              colors: [
                                Colors.red,
                                Colors.orange,
                                Colors.yellow,
                                Colors.green,
                                Colors.cyan,
                                Colors.blue,
                                Colors.purple,
                                Colors.red,
                              ],
                            ),
                          ),
                          child: const Icon(Icons.add,
                              color: Colors.white, size: 22),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: FilledButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: Text(l10n.commonDone),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _showCustomColorPicker(
    BuildContext ctx,
    ColorProvider colorProvider,
    void Function(void Function()) setSheetState,
  ) async {
    Color picked = colorProvider.accent;
    final l10n = AppLocalizations.of(ctx)!;
    await showDialog(
      context: ctx,
      builder: (dctx) => AlertDialog(
        title: Text(l10n.settingsAccentColor),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ColorPicker(
                pickerColor: picked,
                onColorChanged: (c) => picked = c,
                enableAlpha: false,
                labelTypes: const [],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dctx),
            child: Text(l10n.commonCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(minimumSize: const Size(80, 40)),
            onPressed: () {
              colorProvider.setAccent(picked);
              setSheetState(() {});
              Navigator.pop(dctx);
            },
            child: Text(l10n.commonSave),
          ),
        ],
      ),
    );
  }

  void _showLanguagePicker(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final localeProvider = Provider.of<LocaleProvider>(context, listen: false);
    final current = localeProvider.locale.languageCode;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.settingsLanguage),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: LocaleProvider.languages.map((lang) {
              final selected = lang.code == current;
              return ListTile(
                title: Text(lang.nativeName,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                trailing: selected
                    ? Icon(Icons.check_circle_rounded,
                        color: Theme.of(ctx).colorScheme.primary)
                    : null,
                onTap: () {
                  localeProvider.setLocale(lang.code);
                  Navigator.pop(ctx);
                },
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.commonCancel),
          ),
        ],
      ),
    );
  }

  void _showInvoicePrefixEditor(BuildContext context) {
    final ctrl = TextEditingController(text: _invoicePrefix);
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.settingsInvoicePrefixTitle),
        content: TextField(
          controller: ctrl,
          autofocus: true,
          decoration: InputDecoration(hintText: l10n.settingsInvoicePrefixHint),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.commonCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(minimumSize: const Size(80, 40)),
            onPressed: () async {
              await InvoiceNumberUtils.setPrefix(ctrl.text);
              if (!mounted) return;
              setState(() => _invoicePrefix = InvoiceNumberUtils.prefix);
              if (ctx.mounted) Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.settingsPrefixSaved),
                  backgroundColor: AppColors.successGreen,
                ),
              );
            },
            child: Text(l10n.commonSave),
          ),
        ],
      ),
    );
  }

  void _showInfoSheet(BuildContext context,
      {required IconData icon, required String title, required String body}) {
    final scheme = Theme.of(context).colorScheme;
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: scheme.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(icon, color: scheme.primary, size: 26),
            ),
            const SizedBox(height: 16),
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(
              body,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                    height: 1.5,
                  ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(AppLocalizations.of(ctx)!.commonDone),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sheetLabel(BuildContext ctx, String text) => Text(
        text,
        style: Theme.of(ctx).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(ctx).colorScheme.onSurfaceVariant,
            ),
      );

  void _confirmSignOut(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          title: Text(l10n.settingsSignOutTitle),
          content: Text(l10n.settingsSignOutMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(l10n.commonCancel),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.dangerRed,
                minimumSize: const Size(80, 40),
              ),
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(l10n.settingsSignOut),
            ),
          ],
        );
      },
    );

    if (confirmed == true && mounted) {
      await context.read<AuthProvider>().signOut();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.settingsSignedOut),
            backgroundColor: AppColors.successGreen,
          ),
        );
      }
    }
  }
}

class _ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String businessName;
  final VoidCallback onTap;

  const _ProfileCard({
    required this.name,
    required this.email,
    required this.businessName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final initials = name.trim().isEmpty ? '?' : name.trim()[0].toUpperCase();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              scheme.primary,
              Color.lerp(scheme.primary, Colors.black, isDark ? 0.28 : 0.16)!,
            ],
          ),
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: scheme.primary.withValues(alpha: 0.3),
              blurRadius: 24,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  initials,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.isEmpty ? l10n.settingsYourName : name,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    email,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                  if (businessName.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      businessName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                  ],
                ],
              ),
            ),
            const Icon(Icons.edit_outlined, color: Colors.white70, size: 20),
          ],
        ),
      ),
    );
  }
}

class _SignInCard extends StatelessWidget {
  final VoidCallback onSignIn;
  const _SignInCard({required this.onSignIn});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            scheme.primary,
            Color.lerp(
                scheme.primary, Colors.black, isDark ? 0.32 : 0.18)!,
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.28),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.cloud_done_outlined,
                    size: 32, color: Colors.white),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'FREE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            l10n.settingsSignInRegister,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.settingsBackupDescription,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                const Icon(Icons.cloud_sync_outlined,
                    size: 18, color: Colors.white),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    l10n.paywallFeatureSync,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 52,
            child: FilledButton.icon(
              onPressed: onSignIn,
              icon: const Icon(Icons.login_rounded, size: 20),
              label: Text(
                l10n.loginSignIn,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: scheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SubscriptionCard extends StatelessWidget {
  final bool isPro;
  final VoidCallback onUpgrade;
  final VoidCallback onManage;
  final VoidCallback onRestore;

  const _SubscriptionCard({
    required this.isPro,
    required this.onUpgrade,
    required this.onManage,
    required this.onRestore,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accent = Color.lerp(scheme.primary, Colors.black, isDark ? 0.35 : 0.18)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [scheme.primary, accent],
        ),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.28),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Icon(
                  isPro
                      ? Icons.workspace_premium
                      : Icons.workspace_premium_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.settingsProTitle,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      isPro ? l10n.settingsProActive : l10n.settingsProUpsell,
                      style: const TextStyle(
                        fontSize: 12.5,
                        height: 1.4,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              if (isPro)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.22),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'PRO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                _ProFeature(
                  icon: Icons.all_inclusive_rounded,
                  label: l10n.paywallFeatureUnlimited,
                ),
                const SizedBox(height: 10),
                _ProFeature(
                  icon: Icons.cloud_sync_outlined,
                  label: l10n.paywallFeatureSync,
                ),
                const SizedBox(height: 10),
                _ProFeature(
                  icon: Icons.water_drop_outlined,
                  label: l10n.paywallFeatureNoWatermark,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: FilledButton.icon(
              onPressed: isPro ? onManage : onUpgrade,
              icon: Icon(
                isPro ? Icons.tune_rounded : Icons.workspace_premium,
                size: 20,
              ),
              label: Text(
                isPro
                    ? l10n.settingsManageSubscription
                    : l10n.settingsUpgradeToPro,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: scheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          if (!isPro) ...[
            const SizedBox(height: 8),
            Center(
              child: TextButton.icon(
                onPressed: onRestore,
                icon: Icon(
                  Icons.restore_rounded,
                  size: 18,
                  color: Colors.white.withValues(alpha: 0.85),
                ),
                label: Text(
                  l10n.paywallRestore,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ProFeature extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ProFeature({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.white),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Container(
          width: 4,
          height: 16,
          decoration: BoxDecoration(
            color: scheme.primary,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w800,
            color: scheme.onSurfaceVariant,
            letterSpacing: 1.2,
          ),
        ),
      ],
    );
  }
}

class _SettingsGroup extends StatelessWidget {
  final List<Widget> items;
  const _SettingsGroup({required this.items});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: scheme.surface,
      elevation: 1.5,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: scheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: items.asMap().entries.map((entry) {
          final isLast = entry.key == items.length - 1;
          return Column(
            children: [
              entry.value,
              if (!isLast)
                Divider(height: 1, color: scheme.outlineVariant, indent: 56),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _ColorTile({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final accent = context.watch<ColorProvider>().accent;
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: scheme.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Icon(Icons.palette_outlined, size: 18, color: scheme.primary),
      ),
      title: Text(title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: accent,
              shape: BoxShape.circle,
              border: Border.all(color: scheme.outlineVariant, width: 1.5),
            ),
          ),
          const SizedBox(width: 4),
          Icon(Icons.chevron_right, color: scheme.outline, size: 20),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  const _SettingsTile({
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: scheme.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Icon(icon, size: 18, color: scheme.primary),
      ),
      title: Text(title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
            )
          : null,
      trailing: trailing ??
          (onTap != null
              ? Icon(Icons.chevron_right, color: scheme.outline, size: 20)
              : null),
    );
  }
}
