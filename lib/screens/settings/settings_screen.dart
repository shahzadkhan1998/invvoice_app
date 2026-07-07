import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/auth_provider.dart';
import '../../providers/theme_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../services/notification_service.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _businessName = '';
  String _businessEmail = '';
  String _businessPhone = '';
  String _businessAddress = '';
  String _defaultCurrency = 'AED';
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
      _defaultCurrency = prefs.getString('default_currency') ?? 'AED';
      final timeStr = prefs.getString('notification_time');
      if (timeStr != null) {
        final parts = timeStr.split(':');
        if (parts.length == 2) {
          _notificationTime = TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
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
              GestureDetector(
                onTap: () => _showProfileEditor(context),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primaryBlue, AppColors.primaryDark],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            _getInitials(auth.currentUser?.displayName ?? '?'),
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
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
                              auth.currentUser?.displayName ?? l10n.settingsYourName,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              auth.currentUser?.email ?? '',
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.white70),
                            ),
                            if (_businessName.isNotEmpty) ...[
                              const SizedBox(height: 2),
                              Text(
                                _businessName,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white60),
                              ),
                            ],
                          ],
                        ),
                      ),
                      const Icon(Icons.edit_outlined,
                          color: Colors.white70, size: 20),
                    ],
                  ),
                ),
              )
            else
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkSurface : AppColors.primaryPale,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.primaryBlue.withOpacity(0.3)),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.cloud_upload_outlined, size: 40, color: AppColors.primaryBlue),
                    const SizedBox(height: 12),
                    Text(
                      l10n.settingsBackupTitle,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.primaryBlue),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.settingsBackupDescription,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.7)),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 44),
                      ),
                      child: Text(l10n.settingsSignInRegister),
                    ),
                  ],
                ),
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
                subtitle: 'INV-',
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
                  activeColor: AppColors.primaryBlue,
                ),
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
                onTap: () {},
              ),
            ]),

            const SizedBox(height: 20),

            _SectionHeader(title: l10n.settingsAboutSection),
            const SizedBox(height: 8),
            _SettingsGroup(items: [
              _SettingsTile(
                icon: Icons.star_outline,
                title: l10n.settingsRateApp,
                onTap: () {},
              ),
              _SettingsTile(
                icon: Icons.help_outline,
                title: l10n.settingsHelpSupport,
                onTap: () {},
              ),
              _SettingsTile(
                icon: Icons.privacy_tip_outlined,
                title: l10n.settingsPrivacyPolicy,
                onTap: () {},
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
                  icon: const Icon(Icons.logout, color: AppColors.dangerRed),
                  label: Text(
                    l10n.settingsSignOut,
                    style: const TextStyle(
                      color: AppColors.dangerRed,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.dangerRed),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
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
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return Padding(
          padding: EdgeInsets.only(
            left: 20, right: 20, top: 24,
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.settingsEditProfile,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text(l10n.settingsProfileNameLabel,
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500,
                      color: Theme.of(ctx).textTheme.bodyLarge?.color?.withOpacity(0.7))),
              const SizedBox(height: 8),
              TextField(
                controller: nameCtrl,
                decoration: InputDecoration(hintText: l10n.settingsProfileNameHint),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(ctx),
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
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return Padding(
          padding: EdgeInsets.only(
            left: 20, right: 20, top: 24,
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
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    IconButton(
                        onPressed: () => Navigator.pop(ctx),
                        icon: const Icon(Icons.close)),
                  ],
                ),
                const SizedBox(height: 16),
                _sheetLabel(l10n.settingsBusinessNameLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: nameCtrl,
                  decoration: InputDecoration(
                      hintText: l10n.settingsBusinessNameHint),
                ),
                const SizedBox(height: 12),
                _sheetLabel(l10n.settingsBusinessEmailLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: l10n.settingsBusinessEmailHint),
                ),
                const SizedBox(height: 12),
                _sheetLabel(l10n.settingsPhoneLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: phoneCtrl,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: l10n.settingsPhoneHint),
                ),
                const SizedBox(height: 12),
                _sheetLabel(l10n.settingsAddressLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: addressCtrl,
                  decoration: InputDecoration(
                      hintText: l10n.settingsAddressHint),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
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

                      if (mounted) {
                        setState(() {
                          _businessName = nameCtrl.text.trim();
                          _businessEmail = emailCtrl.text.trim();
                          _businessPhone = phoneCtrl.text.trim();
                          _businessAddress = addressCtrl.text.trim();
                        });
                      }
                      Navigator.pop(ctx);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(AppLocalizations.of(context)!.settingsBusinessDetailsSaved),
                          backgroundColor: AppColors.successGreen,
                          behavior: SnackBarBehavior.floating,
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text(l10n.settingsDefaultCurrency),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: currencies.length,
              separatorBuilder: (c, i) => const Divider(),
              itemBuilder: (c, i) => ListTile(
                title: Text(currencies[i]),
                trailing: _defaultCurrency == currencies[i]
                    ? const Icon(Icons.check, color: AppColors.primaryBlue)
                    : null,
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('default_currency', currencies[i]);
                  setState(() => _defaultCurrency = currencies[i]);
                  if (mounted) Navigator.pop(ctx);
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
    if (time != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('notification_time', '${time.hour}:${time.minute}');
      setState(() => _notificationTime = time);
      await NotificationService().scheduleDailyNotification(time: time);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.settingsNotificationScheduled)),
        );
      }
    }
  }

  void _showInvoicePrefixEditor(BuildContext context) {
    final ctrl = TextEditingController(text: 'INV-');
    showDialog(
      context: context,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
          title: Text(l10n.settingsInvoicePrefixTitle),
          content: TextField(
            controller: ctrl,
            decoration: InputDecoration(hintText: l10n.settingsInvoicePrefixHint),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(l10n.commonCancel)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: const Size(80, 40)),
              onPressed: () => Navigator.pop(ctx),
              child: Text(l10n.commonSave),
            ),
          ],
        );
      },
    );
  }

  Widget _sheetLabel(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7),
        ),
      );

  void _confirmSignOut(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
          title: Text(l10n.settingsSignOutTitle),
          content: Text(
              l10n.settingsSignOutMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(l10n.commonCancel),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
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

    if (confirmed == true && context.mounted) {
      await context.read<AuthProvider>().signOut();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.settingsSignedOut),
          backgroundColor: AppColors.successGreen,
        ),
      );
    }
  }

  String _getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    if (name.isNotEmpty) return name[0].toUpperCase();
    return '?';
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        color: AppColors.gray400,
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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: items.asMap().entries.map((entry) {
          final isLast = entry.key == items.length - 1;
          return Column(
            children: [
              entry.value,
              if (!isLast)
                const Divider(
                    height: 1, color: AppColors.gray100,
                    indent: 56, endIndent: 0),
            ],
          );
        }).toList(),
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
    return ListTile(
      onTap: onTap,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: AppColors.primaryPale,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 18, color: AppColors.primaryBlue),
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: const TextStyle(
                  fontSize: 12, color: AppColors.gray400),
            )
          : null,
      trailing: trailing ??
          (onTap != null
              ? const Icon(Icons.chevron_right,
                  color: AppColors.gray300, size: 20)
              : null),
    );
  }
}
