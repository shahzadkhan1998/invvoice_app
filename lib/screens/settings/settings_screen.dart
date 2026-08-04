import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:in_app_review/in_app_review.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/auth_provider.dart';
import '../../providers/theme_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/currency_utils.dart';
import '../../core/utils/invoice_number_utils.dart';
import '../../services/notification_service.dart';
import '../../providers/color_provider.dart';
import '../../providers/locale_provider.dart';
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
  String _defaultCurrency = 'USD';
  String _invoicePrefix = InvoiceNumberUtils.defaultPrefix;
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
      _defaultCurrency = prefs.getString(CurrencyUtils.defaultCurrencyKey) ??
          CurrencyUtils.currencyForLocale(PlatformDispatcher.instance.locale);
      _invoicePrefix = InvoiceNumberUtils.prefix;
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
    final isDark = themeProvider.themeMode == ThemeMode.dark;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsTitle)),
      body: SingleChildScrollView(
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
    );
  }

  void _showProfileEditor(BuildContext context) {
    final auth = context.read<AuthProvider>();
    final nameCtrl = TextEditingController(
        text: auth.currentUser?.displayName ?? '');

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
            style: FilledButton.styleFrom(
                minimumSize: const Size(80, 40)),
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
    final items = {
      'en': l10n.languageEnglish,
      'ar': l10n.languageArabic,
      'fr': l10n.languageFrench,
      'es': l10n.languageSpanish,
      'ur': l10n.languageUrdu,
      'zh': l10n.languageChinese,
    };
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.settingsLanguage),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: items.entries.map((e) {
              final selected = e.key == current;
              return ListTile(
                title: Text(e.value,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                trailing: selected
                    ? Icon(Icons.check_circle_rounded,
                        color: Theme.of(ctx).colorScheme.primary)
                    : null,
                onTap: () {
                  localeProvider.setLocale(e.key);
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
          decoration:
              InputDecoration(hintText: l10n.settingsInvoicePrefixHint),
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
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: scheme.primary.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(Icons.account_circle_outlined,
                size: 28, color: scheme.primary),
          ),
          const SizedBox(height: 12),
          Text(
            l10n.settingsYourName,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: scheme.primary),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.settingsBackupDescription,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: FilledButton(
              onPressed: onSignIn,
              child: Text(l10n.settingsSignInRegister),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
        letterSpacing: 1.2,
      ),
    );
  }
}

class _SettingsGroup extends StatelessWidget {
  final List<Widget> items;
  const _SettingsGroup({required this.items});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        children: items.asMap().entries.map((entry) {
          final isLast = entry.key == items.length - 1;
          return Column(
            children: [
              entry.value,
              if (!isLast)
                Divider(
                    height: 1, color: scheme.outlineVariant, indent: 56),
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
              style: TextStyle(
                  fontSize: 12, color: scheme.onSurfaceVariant),
            )
          : null,
      trailing: trailing ??
          (onTap != null
              ? Icon(Icons.chevron_right, color: scheme.outline, size: 20)
              : null),
    );
  }
}
