import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/client_provider.dart';
import '../../providers/recurring_provider.dart';
import '../../providers/region_provider.dart';
import '../../models/client.dart';
import '../../models/invoice.dart';
import '../../models/recurring_profile.dart';
import '../../core/theme/app_colors.dart';
import '../../core/models/country_config.dart';
import '../../core/utils/currency_utils.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/app_empty_state.dart';
import '../clients/create_client_screen.dart';

class CreateRecurringScreen extends StatefulWidget {
  final RecurringProfile? editProfile;
  const CreateRecurringScreen({super.key, this.editProfile});

  @override
  State<CreateRecurringScreen> createState() => _CreateRecurringScreenState();
}

class _CreateRecurringScreenState extends State<CreateRecurringScreen> {
  final _uuid = const Uuid();
  final _titleCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  final _paymentTermsCtrl =
      TextEditingController(text: 'Payment due within 30 days');
  String _defaultCurrency = 'AED';
  String _countryCode = '';

  Client? _selectedClient;
  RecurrenceFrequency _frequency = RecurrenceFrequency.monthly;
  DateTime _nextRunDate = DateTime.now();
  int _invoiceDueDays = 30;
  final List<LineItem> _lineItems = [];
  double _taxRate = 5.0;

  @override
  void initState() {
    super.initState();
    if (widget.editProfile != null) {
      final p = widget.editProfile!;
      _titleCtrl.text = p.title;
      _notesCtrl.text = p.notes ?? '';
      _paymentTermsCtrl.text = p.paymentTerms ?? '';
      _frequency = p.frequency;
      _nextRunDate = p.nextRunDate;
      _invoiceDueDays = p.invoiceDueDays;
      _lineItems.addAll(p.lineItems);
      _taxRate = p.taxRate;
      _defaultCurrency = p.currency;
    }
    _loadDefaults();
  }

  Future<void> _loadDefaults() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _defaultCurrency =
          prefs.getString(CurrencyUtils.defaultCurrencyKey) ??
              CurrencyUtils.currencyForLocale(
                  PlatformDispatcher.instance.locale);
      _countryCode = prefs.getString(RegionProvider.countryKey) ??
          CountryConfigRegistry.suggestCountryCode(
              PlatformDispatcher.instance.locale);
      if (widget.editProfile == null) {
        _taxRate =
            CountryConfigRegistry.byCode(_countryCode)?.defaultTaxRate ??
                _taxRate;
      }
    });
  }

  List<double> get _taxRateOptions {
    final opts = <double>[0.0, 5.0, 10.0, 15.0];
    final def = CountryConfigRegistry.byCode(_countryCode)?.defaultTaxRate;
    if (def != null && !opts.contains(def)) {
      opts.add(def);
      opts.sort();
    }
    return opts;
  }

  @override
  void dispose() {
    _titleCtrl.dispose();
    _notesCtrl.dispose();
    _paymentTermsCtrl.dispose();
    super.dispose();
  }

  Map<String, double> get _totals {
    double subtotal = _lineItems.fold(0, (sum, item) => sum + item.amount);
    double tax = subtotal * (_taxRate / 100);
    return {
      'subtotal': subtotal,
      'taxAmount': tax,
      'total': subtotal + tax,
    };
  }

  bool get _canSave =>
      _titleCtrl.text.trim().isNotEmpty &&
      _selectedClient != null &&
      _lineItems.isNotEmpty;

  Future<void> _save() async {
    if (!_canSave) return;
    final provider = context.read<RecurringProvider>();
    final totals = _totals;

    final profile = RecurringProfile(
      id: widget.editProfile?.id ?? _uuid.v4(),
      title: _titleCtrl.text.trim(),
      clientId: _selectedClient!.id,
      clientName: _selectedClient!.name,
      frequency: _frequency,
      lineItems: _lineItems,
      subtotal: totals['subtotal']!,
      taxRate: _taxRate,
      taxAmount: totals['taxAmount']!,
      total: totals['total']!,
      currency: _selectedClient?.currency ?? _defaultCurrency,
      nextRunDate: _nextRunDate,
      invoiceDueDays: _invoiceDueDays,
      active: widget.editProfile?.active ?? true,
      lastRunDate: widget.editProfile?.lastRunDate,
      notes: _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
      paymentTerms: _paymentTermsCtrl.text.trim().isEmpty
          ? null
          : _paymentTermsCtrl.text.trim(),
    );

    if (widget.editProfile != null) {
      await provider.updateProfile(profile);
    } else {
      await provider.createProfile(profile);
    }

    if (mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(widget.editProfile != null
              ? AppLocalizations.of(context)!.recurringUpdatedSnackbar
              : AppLocalizations.of(context)!.recurringCreatedSnackbar),
          backgroundColor: AppColors.successGreen,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.editProfile != null
            ? loc.recurringEditTitle
            : loc.recurringCreateTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _label(context, loc.recurringTitleLabel),
            const SizedBox(height: 8),
            TextField(
              controller: _titleCtrl,
              decoration: InputDecoration(
                hintText: loc.recurringTitleHint,
                prefixIcon: const Icon(Icons.receipt_long_outlined),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 20),
            _label(context, loc.recurringClientLabel),
            const SizedBox(height: 8),
            _ClientPicker(
              selectedClient: _selectedClient,
              onSelected: (client) => setState(() => _selectedClient = client),
            ),
            const SizedBox(height: 20),
            _label(context, loc.recurringFrequencyLabel),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _FrequencyChip(
                  label: loc.recurringFrequencyWeekly,
                  selected: _frequency == RecurrenceFrequency.weekly,
                  onTap: () => setState(() => _frequency =
                      RecurrenceFrequency.weekly),
                ),
                _FrequencyChip(
                  label: loc.recurringFrequencyBiweekly,
                  selected: _frequency == RecurrenceFrequency.biweekly,
                  onTap: () => setState(() => _frequency =
                      RecurrenceFrequency.biweekly),
                ),
                _FrequencyChip(
                  label: loc.recurringFrequencyMonthly,
                  selected: _frequency == RecurrenceFrequency.monthly,
                  onTap: () => setState(() => _frequency =
                      RecurrenceFrequency.monthly),
                ),
                _FrequencyChip(
                  label: loc.recurringFrequencyQuarterly,
                  selected: _frequency == RecurrenceFrequency.quarterly,
                  onTap: () => setState(() => _frequency =
                      RecurrenceFrequency.quarterly),
                ),
                _FrequencyChip(
                  label: loc.recurringFrequencyYearly,
                  selected: _frequency == RecurrenceFrequency.yearly,
                  onTap: () => setState(() => _frequency =
                      RecurrenceFrequency.yearly),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _label(context, loc.recurringNextRun),
                      const SizedBox(height: 8),
                      _DateField(
                        icon: Icons.event_available_outlined,
                        value: _formatDate(_nextRunDate),
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: _nextRunDate,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2035),
                          );
                          if (date != null) {
                            setState(() => _nextRunDate = date);
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _label(context, loc.recurringDueDays),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<int>(
                        initialValue: _invoiceDueDays,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.calendar_today_outlined),
                        ),
                        items: [7, 14, 30, 60]
                            .map((d) => DropdownMenuItem(
                                  value: d,
                                  child: Text('$d ${loc.recurringDays}'),
                                ))
                            .toList(),
                        onChanged: (v) =>
                            setState(() => _invoiceDueDays = v ?? 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _label(context, loc.invoiceLineItems),
            const SizedBox(height: 8),
            if (_lineItems.isEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.outlineVariant),
                ),
                child: Column(
                  children: [
                    Icon(Icons.receipt_long_outlined,
                        size: 32,
                        color: Theme.of(context).colorScheme.onSurfaceVariant),
                    const SizedBox(height: 8),
                    Text(
                      loc.invoiceNoItems,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurfaceVariant,
                          ),
                    ),
                  ],
                ),
              )
            else
              ..._lineItems.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final scheme = Theme.of(context).colorScheme;
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: scheme.surface,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: scheme.outlineVariant),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.description,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${item.quantity % 1 == 0 ? item.quantity.toInt() : item.quantity} × ${_selectedClient?.currency ?? _defaultCurrency} ${item.rate.toStringAsFixed(2)}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: scheme.onSurfaceVariant),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${_selectedClient?.currency ?? _defaultCurrency} ${item.amount.toStringAsFixed(2)}',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.close_rounded,
                                size: 18, color: AppColors.dangerRed),
                            onPressed: () => setState(
                                () => _lineItems.removeAt(index)),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () => _addItem(context),
              icon: const Icon(Icons.add_rounded),
              label: Text(loc.invoiceAddItem),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 24),
            _label(context, loc.invoiceTaxRate),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _taxRateOptions
                  .map((rate) => _TaxChip(
                        rate: rate,
                        selected: _taxRate == rate,
                        onTap: () => setState(() => _taxRate = rate),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.07),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withValues(alpha: 0.16)),
              ),
              child: Column(
                children: [
                  _TotalRow(
                    label: loc.invoiceSubtotal,
                    value:
                        '${_selectedClient?.currency ?? _defaultCurrency} ${_totals['subtotal']!.toStringAsFixed(2)}',
                  ),
                  const SizedBox(height: 6),
                  _TotalRow(
                    label: loc.invoiceTax(_taxRate.toStringAsFixed(0)),
                    value:
                        '${_selectedClient?.currency ?? _defaultCurrency} ${_totals['taxAmount']!.toStringAsFixed(2)}',
                  ),
                  Divider(
                      color: Theme.of(context).colorScheme.primary, height: 24),
                  _TotalRow(
                    label: loc.invoiceTotal,
                    value:
                        '${_selectedClient?.currency ?? _defaultCurrency} ${_totals['total']!.toStringAsFixed(2)}',
                    isTotal: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            _label(context, loc.invoiceNotesLabel),
            const SizedBox(height: 8),
            TextField(
              controller: _notesCtrl,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: loc.invoiceNotesHint,
              ),
            ),
            const SizedBox(height: 16),
            _label(context, loc.invoicePaymentTermsLabel),
            const SizedBox(height: 8),
            TextField(
              controller: _paymentTermsCtrl,
              decoration: InputDecoration(
                hintText: loc.invoicePaymentTermsHint,
              ),
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: FilledButton.icon(
                onPressed: _canSave ? _save : null,
                icon: const Icon(Icons.check_rounded),
                label: Text(
                    widget.editProfile != null
                        ? loc.commonSave
                        : loc.recurringCreateTitle,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700)),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  void _addItem(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final descCtrl = TextEditingController();
    final qtyCtrl = TextEditingController(text: '1');
    final rateCtrl = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 8,
          bottom: MediaQuery.of(ctx).viewInsets.bottom + 24,
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(loc.invoiceAddLineItem,
                        style: Theme.of(context).textTheme.titleLarge),
                    IconButton(
                      onPressed: () => Navigator.pop(ctx),
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(loc.invoiceItemDescription,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                        )),
                const SizedBox(height: 8),
                TextFormField(
                  controller: descCtrl,
                  decoration:
                      InputDecoration(hintText: loc.invoiceItemDescriptionHint),
                  validator: (v) =>
                      v == null || v.isEmpty ? loc.commonRequired : null,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(loc.invoiceItemQty,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                  )),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: qtyCtrl,
                            keyboardType:
                                const TextInputType.numberWithOptions(
                                    decimal: true),
                            decoration:
                                InputDecoration(hintText: loc.invoiceItemQtyHint),
                            validator: (v) {
                              if (v == null || v.isEmpty) {
                                return loc.commonRequired;
                              }
                              if (double.tryParse(v) == null) {
                                return loc.commonInvalid;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(loc.invoiceItemRate,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                  )),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: rateCtrl,
                            keyboardType:
                                const TextInputType.numberWithOptions(
                                    decimal: true),
                            decoration:
                                InputDecoration(hintText: loc.invoiceItemRateHint),
                            validator: (v) {
                              if (v == null || v.isEmpty) {
                                return loc.commonRequired;
                              }
                              if (double.tryParse(v) == null) {
                                return loc.commonInvalid;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledButton(
                    onPressed: () {
                      if (!formKey.currentState!.validate()) return;
                      final qty = double.parse(qtyCtrl.text);
                      final rate = double.parse(rateCtrl.text);
                      setState(() {
                        _lineItems.add(LineItem(
                          id: const Uuid().v4(),
                          description: descCtrl.text.trim(),
                          quantity: qty,
                          rate: rate,
                          amount: qty * rate,
                        ));
                      });
                      Navigator.pop(ctx);
                    },
                    child: Text(loc.invoiceAddItem),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _label(BuildContext context, String text) => Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
      );

  String _formatDate(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
      'Nov', 'Dec',
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}

class _ClientPicker extends StatefulWidget {
  final Client? selectedClient;
  final Function(Client) onSelected;
  const _ClientPicker({required this.selectedClient, required this.onSelected});

  @override
  State<_ClientPicker> createState() => _ClientPickerState();
}

class _ClientPickerState extends State<_ClientPicker> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => _pickClient(context),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Row(
          children: [
            widget.selectedClient != null
                ? AppAvatar(initials: widget.selectedClient!.initials, size: 40)
                : Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: scheme.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person_add_outlined,
                        color: scheme.primary, size: 20),
                  ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                widget.selectedClient?.name ?? loc.invoiceSelectClient,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: widget.selectedClient != null
                      ? scheme.onSurface
                      : scheme.onSurfaceVariant,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: scheme.outline, size: 20),
          ],
        ),
      ),
    );
  }

  void _pickClient(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final searchCtrl = TextEditingController();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setSheetState) => DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.85,
          maxChildSize: 0.95,
          builder: (_, scrollCtrl) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
                child: Row(
                  children: [
                    Text(loc.invoiceSelectClient,
                        style: Theme.of(ctx).textTheme.titleLarge),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.pop(ctx),
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: searchCtrl,
                  decoration: InputDecoration(
                    hintText: loc.invoiceSearchClients,
                    prefixIcon: const Icon(Icons.search_rounded),
                  ),
                  onChanged: (_) => setSheetState(() {}),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Consumer<ClientProvider>(
                  builder: (context, provider, _) {
                    final scheme = Theme.of(context).colorScheme;
                    final filtered = provider.searchClients(searchCtrl.text);
                    return filtered.isEmpty
                        ? AppEmptyState(
                            icon: Icons.people_outline_rounded,
                            title: loc.invoiceNoClientsFound,
                            subtitle: loc.invoiceSelectClientEmptyHint,
                            actionLabel: loc.invoiceAddNewClient,
                            onAction: () async {
                              final client = await Navigator.push<Client>(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const CreateClientScreen()),
                              );
                              if (client != null && context.mounted) {
                                widget.onSelected(client);
                                Navigator.pop(ctx);
                              }
                            },
                          )
                        : ListView.separated(
                            controller: scrollCtrl,
                            padding: const EdgeInsets.all(20),
                            itemCount: filtered.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 8),
                            itemBuilder: (_, i) {
                              final client = filtered[i];
                              final selected =
                                  widget.selectedClient?.id == client.id;
                              return GestureDetector(
                                onTap: () {
                                  widget.onSelected(client);
                                  Navigator.pop(ctx);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: scheme.surface,
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: selected
                                          ? scheme.primary
                                          : scheme.outlineVariant,
                                      width: selected ? 2 : 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      AppAvatar(
                                          initials: client.initials, size: 40),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(client.name,
                                                maxLines: 1,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w700)),
                                            Text(client.email,
                                                maxLines: 1,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall
                                                    ?.copyWith(
                                                        color: scheme
                                                            .onSurfaceVariant)),
                                          ],
                                        ),
                                      ),
                                      if (selected)
                                        Icon(Icons.check_circle_rounded,
                                            color: scheme.primary, size: 20),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FrequencyChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;
  const _FrequencyChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? scheme.primary : scheme.surface,
          borderRadius: BorderRadius.circular(10),
          border: selected ? null : Border.all(color: scheme.outlineVariant),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: selected ? Colors.white : scheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

class _TaxChip extends StatelessWidget {
  final double rate;
  final bool selected;
  final VoidCallback onTap;
  const _TaxChip({
    required this.rate,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? scheme.primary : scheme.surface,
          borderRadius: BorderRadius.circular(10),
          border: selected ? null : Border.all(color: scheme.outlineVariant),
        ),
        child: Text(
          '${rate.toStringAsFixed(0)}%',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: selected ? Colors.white : scheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

class _DateField extends StatelessWidget {
  final IconData icon;
  final String value;
  final VoidCallback onTap;
  const _DateField({
    required this.icon,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Row(
          children: [
            Icon(icon, color: scheme.onSurfaceVariant, size: 20),
            const SizedBox(width: 12),
            Text(value, style: Theme.of(context).textTheme.bodyLarge),
            const Spacer(),
            Icon(Icons.arrow_drop_down_rounded,
                color: scheme.onSurfaceVariant),
          ],
        ),
      ),
    );
  }
}

class _TotalRow extends StatelessWidget {
  final String label, value;
  final bool isTotal;
  const _TotalRow(
      {required this.label, required this.value, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 15 : 13,
            color: isTotal ? scheme.primary : scheme.onSurfaceVariant,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 18 : 13,
            color: isTotal ? scheme.primary : null,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
