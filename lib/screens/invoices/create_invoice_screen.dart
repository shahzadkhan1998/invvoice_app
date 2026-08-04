import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/invoice_provider.dart';
import '../../providers/client_provider.dart';
import '../../providers/subscription_provider.dart';
import '../settings/paywall_screen.dart';
import '../../models/invoice.dart';
import '../../models/client.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/app_empty_state.dart';
import 'dart:io';
import 'package:signature/signature.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import '../../core/utils/currency_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../clients/create_client_screen.dart';

class CreateInvoiceScreen extends StatefulWidget {
  final Invoice? editInvoice;
  const CreateInvoiceScreen({Key? key, this.editInvoice}) : super(key: key);

  @override
  State<CreateInvoiceScreen> createState() => _CreateInvoiceScreenState();
}

class _CreateInvoiceScreenState extends State<CreateInvoiceScreen> {
  int _currentStep = 0;
  final _uuid = const Uuid();
  String _defaultCurrency = 'AED';

  // Step 1
  Client? _selectedClient;

  // Step 2
  final List<LineItem> _lineItems = [];
  double _taxRate = 5.0;

  // Step 3
  DateTime _invoiceDate = DateTime.now();
  DateTime _dueDate = DateTime.now().add(const Duration(days: 30));
  final _notesCtrl = TextEditingController();
  final _paymentTermsCtrl =
      TextEditingController(text: 'Payment due within 30 days');

  String? _logoPath;
  String? _signaturePath;
  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 3,
    penColor: Colors.black,
    exportBackgroundColor: Colors.transparent,
  );

  @override
  void initState() {
    super.initState();
    if (widget.editInvoice != null) {
      final inv = widget.editInvoice!;
      _lineItems.addAll(inv.lineItems);
      _taxRate = inv.taxRate;
      _invoiceDate = inv.invoiceDate;
      _dueDate = inv.dueDate;
      _notesCtrl.text = inv.notes ?? '';
      _paymentTermsCtrl.text = inv.paymentTerms ?? '';
      _logoPath = inv.logoUrl;
      _signaturePath = inv.signatureUrl;
    }
    _loadDefaultCurrency();
  }

  Future<void> _loadDefaultCurrency() async {
    final prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {
        _defaultCurrency = prefs.getString(CurrencyUtils.defaultCurrencyKey) ??
            CurrencyUtils.currencyForLocale(PlatformDispatcher.instance.locale);
      });
    }
  }

  @override
  void dispose() {
    _notesCtrl.dispose();
    _paymentTermsCtrl.dispose();
    _signatureController.dispose();
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

  Future<void> _saveInvoice() async {
    if (_selectedClient == null) return;

    final sub = context.read<SubscriptionProvider>();
    sub.refresh();
    if (widget.editInvoice == null && !sub.canCreateInvoice) {
      if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const PaywallScreen()),
        );
      }
      return;
    }

    final provider = context.read<InvoiceProvider>();
    final clientProvider = context.read<ClientProvider>();

    final totals = _totals;
    final invoiceNumber = widget.editInvoice?.invoiceNumber ??
        provider.generateInvoiceNumber();

    if (_signatureController.isNotEmpty) {
      final exportController = SignatureController(
        penStrokeWidth: 2,
        penColor: Colors.black,
        exportBackgroundColor: Colors.transparent,
        points: _signatureController.points,
      );
      final signatureData = await exportController.toPngBytes();
      if (signatureData != null) {
        final dir = await getApplicationDocumentsDirectory();
        final path = '${dir.path}/sig_${_uuid.v4()}.png';
        final file = File(path);
        await file.writeAsBytes(signatureData);
        _signaturePath = path;
      }
      exportController.dispose();
    }

    final invoice = Invoice(
      id: widget.editInvoice?.id ?? _uuid.v4(),
      invoiceNumber: invoiceNumber,
      clientId: _selectedClient!.id,
      clientName: _selectedClient!.name,
      invoiceDate: _invoiceDate,
      dueDate: _dueDate,
      lineItems: _lineItems,
      subtotal: totals['subtotal']!,
      taxRate: _taxRate,
      taxAmount: totals['taxAmount']!,
      total: totals['total']!,
      status: InvoiceStatus.draft,
      notes: _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
      paymentTerms: _paymentTermsCtrl.text.trim().isEmpty
          ? null
          : _paymentTermsCtrl.text.trim(),
      currency: _selectedClient?.currency ?? _defaultCurrency,
      logoUrl: _logoPath,
      signatureUrl: _signaturePath,
    );

    if (widget.editInvoice != null) {
      await provider.updateInvoice(invoice);
    } else {
      await provider.createInvoice(invoice);
      await clientProvider.updateClientStats(_selectedClient!.id, invoice.total);
    }

    if (mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(widget.editInvoice != null
              ? AppLocalizations.of(context)!.invoiceUpdatedSnackbar
              : AppLocalizations.of(context)!.invoiceCreatedSnackbar),
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
        title: Text(
            widget.editInvoice != null ? loc.invoiceEditTitle : loc.invoiceCreateTitle),
        actions: [
          if (_currentStep == 2)
            TextButton(
              onPressed: _saveInvoice,
              child: Text(loc.invoiceSaveDraft),
            ),
        ],
      ),
      body: Column(
        children: [
          _StepIndicator(currentStep: _currentStep),

          Expanded(
            child: IndexedStack(
              index: _currentStep,
              children: [
                _Step1SelectClient(
                  selectedClient: _selectedClient,
                  onClientSelected: (client) =>
                      setState(() => _selectedClient = client),
                ),
                _Step2LineItems(
                  lineItems: _lineItems,
                  taxRate: _taxRate,
                  currency: _selectedClient?.currency ?? _defaultCurrency,
                  totals: _totals,
                  onLineItemsChanged: (items) => setState(() => _lineItems
                    ..clear()
                    ..addAll(items)),
                  onTaxRateChanged: (rate) => setState(() => _taxRate = rate),
                ),
                _Step3Review(
                  invoiceDate: _invoiceDate,
                  dueDate: _dueDate,
                  notesCtrl: _notesCtrl,
                  paymentTermsCtrl: _paymentTermsCtrl,
                  taxRate: _taxRate,
                  totals: _totals,
                  currency: _selectedClient?.currency ?? _defaultCurrency,
                  logoPath: _logoPath,
                  signaturePath: _signaturePath,
                  signatureController: _signatureController,
                  onInvoiceDateChanged: (d) => setState(() => _invoiceDate = d),
                  onDueDateChanged: (d) => setState(() => _dueDate = d),
                  onLogoPicked: () async {
                    final picker = ImagePicker();
                    final image =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      setState(() => _logoPath = image.path);
                    }
                  },
                ),
              ],
            ),
          ),

          _BottomNav(
            currentStep: _currentStep,
            canProceed: _canProceed(),
            onBack: () => setState(() => _currentStep--),
            onNext: () {
              if (_currentStep < 2) {
                setState(() => _currentStep++);
              } else {
                _saveInvoice();
              }
            },
          ),
        ],
      ),
    );
  }

  bool _canProceed() {
    switch (_currentStep) {
      case 0:
        return _selectedClient != null;
      case 1:
        return _lineItems.isNotEmpty;
      case 2:
        return true;
      default:
        return false;
    }
  }
}

// ─── STEP INDICATOR ───
class _StepIndicator extends StatelessWidget {
  final int currentStep;
  const _StepIndicator({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final labels = [loc.invoiceStepClient, loc.invoiceStepItems, loc.invoiceStepReview];

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 16),
      decoration: BoxDecoration(
        color: scheme.surface,
        border: Border(bottom: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Row(
        children: [
          for (var i = 0; i < 3; i++) ...[
            if (i > 0)
              Expanded(
                child: Container(
                  height: 2,
                  margin: const EdgeInsets.only(bottom: 18),
                  decoration: BoxDecoration(
                    color: i <= currentStep
                        ? scheme.primary
                        : scheme.outlineVariant,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            _StepDot(index: i, current: currentStep, label: labels[i]),
          ],
        ],
      ),
    );
  }
}

class _StepDot extends StatelessWidget {
  final int index, current;
  final String label;
  const _StepDot(
      {required this.index, required this.current, required this.label});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final active = index <= current;
    final done = index < current;

    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: active ? scheme.primary : scheme.surfaceContainerHighest,
            shape: BoxShape.circle,
            border: active
                ? null
                : Border.all(color: scheme.outlineVariant),
          ),
          child: Center(
            child: done
                ? const Icon(Icons.check_rounded, color: Colors.white, size: 16)
                : Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: active ? Colors.white : scheme.onSurfaceVariant,
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10.5,
            fontWeight: FontWeight.w600,
            color: active ? scheme.primary : scheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

// ─── STEP 1: SELECT CLIENT ───
class _Step1SelectClient extends StatefulWidget {
  final Client? selectedClient;
  final Function(Client) onClientSelected;
  const _Step1SelectClient(
      {required this.selectedClient, required this.onClientSelected});

  @override
  State<_Step1SelectClient> createState() => _Step1SelectClientState();
}

class _Step1SelectClientState extends State<_Step1SelectClient> {
  final _searchCtrl = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return Consumer<ClientProvider>(
      builder: (context, provider, _) {
        final filtered = provider.searchClients(_query);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(loc.invoiceSelectClient,
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 4),
                  Text(loc.invoiceSelectClientSubtitle,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: scheme.onSurfaceVariant,
                          )),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _searchCtrl,
                    decoration: InputDecoration(
                      hintText: loc.invoiceSearchClients,
                      prefixIcon: const Icon(Icons.search_rounded),
                    ),
                    onChanged: (v) => setState(() => _query = v),
                  ),
                ],
              ),
            ),
            Expanded(
              child: filtered.isEmpty && _query.isEmpty
                  ? AppEmptyState(
                      icon: Icons.people_outline_rounded,
                      title: loc.invoiceNoClientsFound,
                      subtitle: loc.invoiceSelectClientEmptyHint,
                      actionLabel: loc.invoiceAddNewClient,
                      onAction: () async {
                        final client = await Navigator.push<Client>(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const CreateClientScreen()),
                        );
                        if (client != null && context.mounted) {
                          widget.onClientSelected(client);
                        }
                      },
                    )
                  : ListView(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                      children: [
                        _AddClientTile(
                          onTap: () async {
                            final client = await Navigator.push<Client>(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const CreateClientScreen()),
                            );
                            if (client != null && context.mounted) {
                              widget.onClientSelected(client);
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        if (filtered.isEmpty && _query.isNotEmpty)
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(32),
                              child: Text(
                                loc.invoiceNoClientsFound,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: scheme.onSurfaceVariant),
                              ),
                            ),
                          )
                        else
                          ...filtered.map((client) => Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: _ClientSelectCard(
                                  client: client,
                                  selected: widget.selectedClient?.id ==
                                      client.id,
                                  onTap: () =>
                                      widget.onClientSelected(client),
                                ),
                              )),
                      ],
                    ),
            ),
          ],
        );
      },
    );
  }
}

class _AddClientTile extends StatelessWidget {
  final VoidCallback onTap;
  const _AddClientTile({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          border: Border.all(color: scheme.primary, width: 1.5),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: scheme.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.add_rounded, color: scheme.primary, size: 22),
            ),
            const SizedBox(width: 12),
            Text(
              loc.invoiceAddNewClient,
              style: TextStyle(
                color: scheme.primary,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ClientSelectCard extends StatelessWidget {
  final Client client;
  final bool selected;
  final VoidCallback onTap;

  const _ClientSelectCard({
    required this.client,
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
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected ? scheme.primary : scheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            AppAvatar(initials: client.initials, size: 44),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    client.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    client.email,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                  ),
                  Text(
                    '${client.currency} • VAT ${client.defaultTaxRate.toStringAsFixed(0)}%',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                          fontSize: 11,
                        ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: selected ? scheme.primary : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: selected ? scheme.primary : scheme.outline,
                  width: 1.5,
                ),
              ),
              child: selected
                  ? const Icon(Icons.check_rounded,
                      color: Colors.white, size: 16)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

// ─── STEP 2: LINE ITEMS ───
class _Step2LineItems extends StatelessWidget {
  final List<LineItem> lineItems;
  final double taxRate;
  final String currency;
  final Map<String, double> totals;
  final Function(List<LineItem>) onLineItemsChanged;
  final Function(double) onTaxRateChanged;

  const _Step2LineItems({
    required this.lineItems,
    required this.taxRate,
    required this.currency,
    required this.totals,
    required this.onLineItemsChanged,
    required this.onTaxRateChanged,
  });

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
                  decoration: InputDecoration(
                      hintText: loc.invoiceItemDescriptionHint),
                  validator: (v) => v == null || v.isEmpty
                      ? loc.commonRequired
                      : null,
                ),
                const SizedBox(height: 12),
                Text(loc.invoiceItemQuickAdd,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        )),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    loc.quickAddWebDesign,
                    loc.quickAddDevelopment,
                    loc.quickAddConsulting,
                    loc.quickAddSeo,
                    loc.quickAddContentWriting,
                  ].map((s) => GestureDetector(
                        onTap: () => descCtrl.text = s,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: scheme.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(s,
                              style: TextStyle(
                                fontSize: 12,
                                color: scheme.primary,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      )).toList(),
                ),
                const SizedBox(height: 14),
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
                            keyboardType: const TextInputType.numberWithOptions(
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
                            keyboardType: const TextInputType.numberWithOptions(
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
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledButton(
                    onPressed: () {
                      if (!formKey.currentState!.validate()) return;
                      final qty = double.parse(qtyCtrl.text);
                      final rate = double.parse(rateCtrl.text);
                      final newItem = LineItem(
                        id: const Uuid().v4(),
                        description: descCtrl.text.trim(),
                        quantity: qty,
                        rate: rate,
                        amount: qty * rate,
                      );
                      final updated = [...lineItems, newItem];
                      onLineItemsChanged(updated);
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

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(loc.invoiceLineItems,
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 4),
          Text(loc.invoiceLineItemsSubtitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  )),
          const SizedBox(height: 16),

          if (lineItems.isEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: scheme.surface,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: scheme.outlineVariant),
              ),
              child: Column(
                children: [
                  Icon(Icons.receipt_long_outlined,
                      size: 40, color: scheme.onSurfaceVariant),
                  const SizedBox(height: 12),
                  Text(
                    loc.invoiceNoItems,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                  ),
                ],
              ),
            )
          else
            ...lineItems.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
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
                            '${item.quantity % 1 == 0 ? item.quantity.toInt() : item.quantity} × $currency ${item.rate.toStringAsFixed(2)}',
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
                          '$currency ${item.amount.toStringAsFixed(2)}',
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
                          onPressed: () {
                            final updated = [...lineItems];
                            updated.removeAt(index);
                            onLineItemsChanged(updated);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),

          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () => _addItem(context),
            icon: const Icon(Icons.add_rounded),
            label: Text(loc.invoiceAddItem),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
          ),

          const SizedBox(height: 24),

          Text(loc.invoiceTaxRate,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 10),
          Row(
            children: [
              for (final rate in [0.0, 5.0, 10.0, 15.0])
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: _TaxChip(
                    rate: rate,
                    selected: taxRate == rate,
                    onTap: () => onTaxRateChanged(rate),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 24),

          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: scheme.primary.withValues(alpha: 0.07),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                  color: scheme.primary.withValues(alpha: 0.16)),
            ),
            child: Column(
              children: [
                _TotalRow(
                  label: loc.invoiceSubtotal,
                  value: '$currency ${totals['subtotal']!.toStringAsFixed(2)}',
                ),
                const SizedBox(height: 6),
                _TotalRow(
                  label: loc.invoiceTax(taxRate.toStringAsFixed(0)),
                  value:
                      '$currency ${totals['taxAmount']!.toStringAsFixed(2)}',
                ),
                Divider(color: scheme.primary, height: 24),
                _TotalRow(
                  label: loc.invoiceTotal,
                  value: '$currency ${totals['total']!.toStringAsFixed(2)}',
                  isTotal: true,
                ),
              ],
            ),
          ),
        ],
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
          border: selected
              ? null
              : Border.all(color: scheme.outlineVariant),
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

class _TotalRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const _TotalRow({
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final color = isTotal ? scheme.primary : scheme.onSurfaceVariant;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 15 : 13,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w500,
            color: color,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 18 : 13,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
            color: isTotal ? scheme.primary : null,
          ),
        ),
      ],
    );
  }
}

// ─── STEP 3: REVIEW ───
class _Step3Review extends StatelessWidget {
  final DateTime invoiceDate;
  final DateTime dueDate;
  final TextEditingController notesCtrl;
  final TextEditingController paymentTermsCtrl;
  final double taxRate;
  final Map<String, double> totals;
  final String currency;
  final String? logoPath;
  final String? signaturePath;
  final SignatureController signatureController;
  final Function(DateTime) onInvoiceDateChanged;
  final Function(DateTime) onDueDateChanged;
  final VoidCallback onLogoPicked;

  const _Step3Review({
    required this.invoiceDate,
    required this.dueDate,
    required this.notesCtrl,
    required this.paymentTermsCtrl,
    required this.taxRate,
    required this.totals,
    required this.currency,
    this.logoPath,
    this.signaturePath,
    required this.signatureController,
    required this.onInvoiceDateChanged,
    required this.onDueDateChanged,
    required this.onLogoPicked,
  });

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(loc.invoiceReviewHeading,
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 4),
          Text(loc.invoiceReviewSubtitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  )),
          const SizedBox(height: 20),

          _label(context, loc.invoiceCompanyLogo),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: onLogoPicked,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: scheme.surface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: scheme.outlineVariant),
              ),
              child: logoPath != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(File(logoPath!), fit: BoxFit.cover),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_photo_alternate_outlined,
                            color: scheme.onSurfaceVariant),
                        const SizedBox(height: 4),
                        Text(loc.invoiceAddLogo,
                            style: TextStyle(
                                fontSize: 12,
                                color: scheme.onSurfaceVariant)),
                      ],
                    ),
            ),
          ),
          const SizedBox(height: 20),

          _label(context, loc.invoiceInvoiceDate),
          const SizedBox(height: 8),
          _DateField(
            icon: Icons.calendar_today_outlined,
            value: _formatDate(invoiceDate),
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: invoiceDate,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              );
              if (date != null) onInvoiceDateChanged(date);
            },
          ),
          const SizedBox(height: 16),

          _label(context, loc.invoiceDueDate),
          const SizedBox(height: 8),
          _DateField(
            icon: Icons.event_outlined,
            value: _formatDate(dueDate),
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: dueDate,
                firstDate: invoiceDate,
                lastDate: DateTime(2030),
              );
              if (date != null) onDueDateChanged(date);
            },
          ),
          const SizedBox(height: 12),

          Row(
            children: [
              for (final days in [7, 14, 30, 60])
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: _NetChip(
                    days: days,
                    onTap: () =>
                        onDueDateChanged(invoiceDate.add(Duration(days: days))),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 24),

          _label(context, loc.invoiceNotesLabel),
          const SizedBox(height: 8),
          TextField(
            controller: notesCtrl,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: loc.invoiceNotesHint,
            ),
          ),

          const SizedBox(height: 16),

          _label(context, loc.invoicePaymentTermsLabel),
          const SizedBox(height: 8),
          TextField(
            controller: paymentTermsCtrl,
            decoration: InputDecoration(
              hintText: loc.invoicePaymentTermsHint,
            ),
          ),

          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _label(context, loc.invoiceSignatureLabel),
              TextButton(
                onPressed: () => signatureController.clear(),
                child: Text(loc.commonClear,
                    style: const TextStyle(color: AppColors.dangerRed)),
              ),
            ],
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: scheme.surface,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: scheme.outlineVariant),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Signature(
                controller: signatureController,
                backgroundColor: scheme.surface,
              ),
            ),
          ),
          if (signaturePath != null && signatureController.isEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                loc.invoiceSignatureOverwrite,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
              ),
            ),

          const SizedBox(height: 24),
          Divider(color: scheme.outlineVariant),
          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: scheme.primary.withValues(alpha: 0.07),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: scheme.primary.withValues(alpha: 0.16)),
            ),
            child: Column(
              children: [
                _SummaryRow(
                  label: loc.invoiceSubtotal,
                  value:
                      '$currency ${totals['subtotal']!.toStringAsFixed(2)}',
                ),
                const SizedBox(height: 6),
                _SummaryRow(
                  label: loc.invoiceTax(taxRate.toStringAsFixed(0)),
                  value:
                      '$currency ${totals['taxAmount']!.toStringAsFixed(2)}',
                ),
                Divider(color: scheme.primary, height: 20),
                _SummaryRow(
                  label: loc.invoiceTotal,
                  value: '$currency ${totals['total']!.toStringAsFixed(2)}',
                  isTotal: true,
                ),
              ],
            ),
          ),
        ],
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
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
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
        padding: const EdgeInsets.all(16),
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

class _NetChip extends StatelessWidget {
  final int days;
  final VoidCallback onTap;

  const _NetChip({required this.days, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Text(
          'Net $days',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: scheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label, value;
  final bool isTotal;
  const _SummaryRow(
      {required this.label,
      required this.value,
      this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final color = isTotal ? scheme.primary : scheme.onSurfaceVariant;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: TextStyle(
              fontSize: isTotal ? 15 : 13,
              fontWeight: isTotal ? FontWeight.w800 : FontWeight.w500,
              color: color,
            )),
        Text(value,
            style: TextStyle(
              fontSize: isTotal ? 18 : 13,
              fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
              color: isTotal ? scheme.primary : null,
            )),
      ],
    );
  }
}

// ─── BOTTOM NAVIGATION ───
class _BottomNav extends StatelessWidget {
  final int currentStep;
  final bool canProceed;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const _BottomNav({
    required this.currentStep,
    required this.canProceed,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: EdgeInsets.fromLTRB(
          16, 12, 16, 20 + MediaQuery.of(context).padding.bottom),
      decoration: BoxDecoration(
        color: scheme.surface,
        border: Border(top: BorderSide(color: scheme.outlineVariant)),
      ),
      child: Row(
        children: [
          if (currentStep > 0) ...[
            OutlinedButton(
              onPressed: onBack,
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(100, 52),
                backgroundColor: Colors.transparent,
              ),
              child: Text(loc.commonBack),
            ),
            const SizedBox(width: 12),
          ],
          Expanded(
            child: FilledButton.icon(
              onPressed: canProceed ? onNext : null,
              icon: currentStep == 2
                  ? const Icon(Icons.check_rounded, size: 20)
                  : const Icon(Icons.arrow_forward_rounded, size: 20),
              label: Text(
                currentStep == 2 ? loc.invoiceCreateTitle : loc.commonContinue,
              ),
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 52),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
