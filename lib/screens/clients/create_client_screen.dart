import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/client_provider.dart';
import '../../providers/subscription_provider.dart';
import '../../models/client.dart';
import '../settings/paywall_screen.dart';
import '../../core/theme/app_colors.dart';

class CreateClientScreen extends StatefulWidget {
  final Client? editClient;
  const CreateClientScreen({Key? key, this.editClient}) : super(key: key);

  @override
  State<CreateClientScreen> createState() => _CreateClientScreenState();
}

class _CreateClientScreenState extends State<CreateClientScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _addressCtrl = TextEditingController();
  final _cityCtrl = TextEditingController();
  final _vatCtrl = TextEditingController();

  String _selectedCurrency = 'AED';
  double _taxRate = 5.0;
  bool _isLoading = false;

  final List<String> _currencies = [
    'AED', 'SAR', 'USD', 'EUR', 'GBP', 'QAR', 'KWD', 'BHD', 'EGP', 'INR'
  ];

  @override
  void initState() {
    super.initState();
    if (widget.editClient != null) {
      final c = widget.editClient!;
      _nameCtrl.text = c.name;
      _emailCtrl.text = c.email;
      _phoneCtrl.text = c.phone ?? '';
      _addressCtrl.text = c.address ?? '';
      _cityCtrl.text = c.city ?? '';
      _vatCtrl.text = c.vatNumber ?? '';
      _selectedCurrency = c.currency;
      _taxRate = c.defaultTaxRate;
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _phoneCtrl.dispose();
    _addressCtrl.dispose();
    _cityCtrl.dispose();
    _vatCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    if (widget.editClient == null) {
      final sub = context.read<SubscriptionProvider>();
      sub.updateCounts(
          clientCount: context.read<ClientProvider>().clients.length);
      if (!sub.canCreateClient) {
        _showLimitDialog();
        return;
      }
    }

    setState(() => _isLoading = true);

    final provider = context.read<ClientProvider>();
    final client = Client(
      id: widget.editClient?.id ?? const Uuid().v4(),
      name: _nameCtrl.text.trim(),
      email: _emailCtrl.text.trim(),
      phone: _phoneCtrl.text.trim().isEmpty ? null : _phoneCtrl.text.trim(),
      address:
          _addressCtrl.text.trim().isEmpty ? null : _addressCtrl.text.trim(),
      city: _cityCtrl.text.trim().isEmpty ? null : _cityCtrl.text.trim(),
      vatNumber: _vatCtrl.text.trim().isEmpty ? null : _vatCtrl.text.trim(),
      currency: _selectedCurrency,
      defaultTaxRate: _taxRate,
      totalInvoices: widget.editClient?.totalInvoices ?? 0,
      totalBilled: widget.editClient?.totalBilled ?? 0.0,
    );

    Client? saved;
    if (widget.editClient != null) {
      await provider.updateClient(client);
      saved = client;
    } else {
      saved = await provider.createClient(client);
    }

    if (!mounted) return;
    setState(() => _isLoading = false);

    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(widget.editClient != null
            ? l10n.clientUpdatedSnackbar
            : l10n.clientAddedSnackbar),
        backgroundColor: AppColors.successGreen,
        behavior: SnackBarBehavior.floating,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    Navigator.pop(context, saved);
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.editClient != null;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? l10n.clientEditTitle : l10n.clientCreateTitle),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SectionHeader(title: l10n.clientBasicInfo, icon: Icons.person_outline),
              const SizedBox(height: 12),

              _label(l10n.clientNameLabel),
              const SizedBox(height: 8),
              TextFormField(
                controller: _nameCtrl,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: l10n.clientNameHint,
                  prefixIcon: Icon(Icons.business_outlined, color: Theme.of(context).hintColor),
                ),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return l10n.clientNameRequired;
                  if (v.trim().length < 2) return l10n.clientNameTooShort;
                  return null;
                },
              ),
              const SizedBox(height: 14),

              _label(l10n.clientEmailLabel),
              const SizedBox(height: 8),
              TextFormField(
                controller: _emailCtrl,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: l10n.clientEmailHint,
                  prefixIcon: Icon(Icons.email_outlined, color: Theme.of(context).hintColor),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return l10n.clientEmailRequired;
                  if (!v.contains('@')) return l10n.clientEmailInvalid;
                  return null;
                },
              ),
              const SizedBox(height: 14),

              _label(l10n.clientPhoneLabel),
              const SizedBox(height: 8),
              TextFormField(
                controller: _phoneCtrl,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: l10n.clientPhoneHint,
                  prefixIcon: Icon(Icons.phone_outlined, color: Theme.of(context).hintColor),
                ),
              ),
              const SizedBox(height: 24),

              _SectionHeader(title: l10n.clientAddressSection, icon: Icons.location_on_outlined),
              const SizedBox(height: 12),

              _label(l10n.clientAddressLabel),
              const SizedBox(height: 8),
              TextFormField(
                controller: _addressCtrl,
                textCapitalization: TextCapitalization.sentences,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: l10n.clientAddressHint,
                  prefixIcon: Icon(Icons.home_outlined, color: Theme.of(context).hintColor),
                ),
              ),
              const SizedBox(height: 14),

              _label(l10n.clientCityLabel),
              const SizedBox(height: 8),
              TextFormField(
                controller: _cityCtrl,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: l10n.clientCityHint,
                  prefixIcon: Icon(Icons.location_city_outlined, color: Theme.of(context).hintColor),
                ),
              ),
              const SizedBox(height: 24),

              _SectionHeader(title: l10n.clientBillingDefaults, icon: Icons.receipt_outlined),
              const SizedBox(height: 12),

              _label(l10n.clientDefaultCurrency),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: _selectedCurrency,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attach_money, color: Theme.of(context).hintColor),
                ),
                items: _currencies.map((currency) {
                  return DropdownMenuItem(
                    value: currency,
                    child: Text(currency),
                  );
                }).toList(),
                onChanged: (v) => setState(() => _selectedCurrency = v!),
              ),
              const SizedBox(height: 14),

              _label(l10n.clientDefaultTaxRate),
              const SizedBox(height: 12),
              Row(
                children: [
                  for (final rate in [0.0, 5.0, 10.0, 15.0, 20.0])
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => _taxRate = rate),
                        child: Container(
                          margin: EdgeInsets.only(
                              right: rate == 20.0 ? 0 : 8),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: _taxRate == rate
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: _taxRate == rate
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.transparent,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '${rate.toStringAsFixed(0)}%',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: _taxRate == rate
                                    ? Colors.white
                                    : Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 14),

              _label(l10n.clientVatLabel),
              const SizedBox(height: 8),
              TextFormField(
                controller: _vatCtrl,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: l10n.clientVatHint,
                  prefixIcon: Icon(Icons.numbers_outlined, color: Theme.of(context).hintColor),
                ),
              ),

              const SizedBox(height: 36),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _save,
                  child: _isLoading
                      ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                              color: Colors.white, strokeWidth: 2),
                        )
                      : Text(
                          isEdit ? l10n.clientUpdateButton : l10n.clientAddButton,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _label(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7),
        ),
      );

  void _showLimitDialog() {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(l10n.settingsBackupTitle),
        content: Text(l10n.subscriptionClientLimit(SubscriptionProvider.freeClientLimit)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.commonCancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PaywallScreen()),
              );
            },
            child: Text(l10n.settingsUpgradePro),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final IconData icon;
  const _SectionHeader({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: AppColors.primaryPale,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
