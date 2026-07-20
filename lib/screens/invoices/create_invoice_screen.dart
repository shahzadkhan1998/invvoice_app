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
import 'dart:io';
import 'dart:typed_data';
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
        _defaultCurrency = prefs.getString('default_currency') ??
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
    double subtotal =
        _lineItems.fold(0, (sum, item) => sum + item.amount);
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
    // Only gate new invoices; editing an existing one never counts against the limit.
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

    // Export signature if changed
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
      await clientProvider.updateClientStats(
          _selectedClient!.id, invoice.total);
    }

    if (mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(widget.editInvoice != null
              ? AppLocalizations.of(context)!.invoiceUpdatedSnackbar
              : AppLocalizations.of(context)!.invoiceCreatedSnackbar),
          backgroundColor: AppColors.successGreen,
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.editInvoice != null ? AppLocalizations.of(context)!.invoiceEditTitle : AppLocalizations.of(context)!.invoiceCreateTitle),
        actions: [
          if (_currentStep == 2)
            TextButton(
              onPressed: _saveInvoice,
              child: Text(
                AppLocalizations.of(context)!.invoiceSaveDraft,
                style: TextStyle(color: AppColors.primaryBlue),
              ),
            ),
        ],
      ),
      body: Column(
        children: [
          // Progress indicator
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
                  onLineItemsChanged: (items) =>
                      setState(() => _lineItems
                        ..clear()
                        ..addAll(items)),
                  onTaxRateChanged: (rate) =>
                      setState(() => _taxRate = rate),
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
                  onInvoiceDateChanged: (d) =>
                      setState(() => _invoiceDate = d),
                  onDueDateChanged: (d) => setState(() => _dueDate = d),
                  onLogoPicked: () async {
                    final picker = ImagePicker();
                    final image = await picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      setState(() => _logoPath = image.path);
                    }
                  },
                ),
              ],
            ),
          ),

          // Bottom navigation
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(
            bottom: BorderSide(color: AppColors.gray100)),
      ),
      child: Row(
        children: [
          _StepDot(index: 0, current: currentStep, label: AppLocalizations.of(context)!.invoiceStepClient),
          _StepLine(active: currentStep >= 1),
          _StepDot(index: 1, current: currentStep, label: AppLocalizations.of(context)!.invoiceStepItems),
          _StepLine(active: currentStep >= 2),
          _StepDot(index: 2, current: currentStep, label: AppLocalizations.of(context)!.invoiceStepReview),
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
    final active = index <= current;
    final done = index < current;
    return Column(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: active ? AppColors.primaryBlue : AppColors.gray100,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: done
                ? const Icon(Icons.check, color: Colors.white, size: 16)
                : Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color:
                          active ? Colors.white : AppColors.gray400,
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: active ? AppColors.primaryBlue : AppColors.gray400,
          ),
        ),
      ],
    );
  }
}

class _StepLine extends StatelessWidget {
  final bool active;
  const _StepLine({required this.active});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        margin: const EdgeInsets.only(bottom: 16),
        color: active ? AppColors.primaryBlue : AppColors.gray200,
      ),
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
    return Consumer<ClientProvider>(
      builder: (context, provider, _) {
        final filtered = provider.searchClients(_query);
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.invoiceSelectClient,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    AppLocalizations.of(context)!.invoiceSelectClientSubtitle,
                    style: const TextStyle(
                        fontSize: 14, color: AppColors.gray500),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _searchCtrl,
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.invoiceSearchClients,
                      prefixIcon: const Icon(Icons.search,
                          color: AppColors.gray400),
                    ),
                    onChanged: (v) => setState(() => _query = v),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  // Add new client
                  GestureDetector(
                    onTap: () async {
                      final client = await Navigator.push<Client>(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const CreateClientScreen()),
                      );
                      if (client != null) {
                        widget.onClientSelected(client);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryBlue,
                          width: 1.5,
                          // ignore: deprecated_member_use
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.add_circle_outline,
                              color: AppColors.primaryBlue),
                          const SizedBox(width: 12),
                          Text(
                            AppLocalizations.of(context)!.invoiceAddNewClient,
                            style: const TextStyle(
                              color: AppColors.primaryBlue,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (filtered.isEmpty && _query.isNotEmpty)
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(AppLocalizations.of(context)!.invoiceNoClientsFound,
                            style:
                                const TextStyle(color: AppColors.gray400)),
                      ),
                    )
                  else
                    ...filtered.map((client) {
                      final selected =
                          widget.selectedClient?.id == client.id;
                      return GestureDetector(
                        onTap: () =>
                            widget.onClientSelected(client),
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: selected
                                ? AppColors.primaryPale
                                : Theme.of(context).cardTheme.color,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: selected
                                  ? AppColors.primaryBlue
                                  : AppColors.gray200,
                              width: selected ? 2 : 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: selected
                                      ? AppColors.primaryBlue
                                      : AppColors.primaryPale,
                                  borderRadius:
                                      BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    client.initials,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: selected
                                          ? Colors.white
                                          : AppColors.primaryBlue,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      client.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      client.email,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: AppColors.gray500,
                                      ),
                                    ),
                                    Text(
                                      '${client.currency} • VAT ${client.defaultTaxRate.toStringAsFixed(0)}%',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColors.gray400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (selected)
                                const Icon(Icons.check_circle,
                                    color: AppColors.primaryBlue),
                            ],
                          ),
                        ),
                      );
                    }),
                ],
              ),
            ),
          ],
        );
      },
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
    final descCtrl = TextEditingController();
    final qtyCtrl = TextEditingController(text: '1');
    final rateCtrl = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 24,
          bottom: MediaQuery.of(ctx).viewInsets.bottom + 24,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.invoiceAddLineItem,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () => Navigator.pop(ctx),
                      icon: const Icon(Icons.close)),
                ],
              ),
              const SizedBox(height: 16),
              Text(AppLocalizations.of(context)!.invoiceItemDescription,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7))),
              const SizedBox(height: 8),
              TextFormField(
                controller: descCtrl,
                decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.invoiceItemDescriptionHint),
                validator: (v) =>
                    v == null || v.isEmpty ? AppLocalizations.of(context)!.commonRequired : null,
              ),
              const SizedBox(height: 12),
              // Quick service presets
              Text(AppLocalizations.of(context)!.invoiceItemQuickAdd,
                  style: const TextStyle(
                      fontSize: 12, color: AppColors.gray500)),
              const SizedBox(height: 6),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  AppLocalizations.of(context)!.quickAddWebDesign,
                  AppLocalizations.of(context)!.quickAddDevelopment,
                  AppLocalizations.of(context)!.quickAddConsulting,
                  AppLocalizations.of(context)!.quickAddSeo,
                  AppLocalizations.of(context)!.quickAddContentWriting,
                ].map((s) => GestureDetector(
                  onTap: () => descCtrl.text = s,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.primaryPale,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(s,
                        style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryBlue,
                            fontWeight: FontWeight.w500)),
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
                         Text(AppLocalizations.of(context)!.invoiceItemQty,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7))),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: qtyCtrl,
                          keyboardType:
                              const TextInputType.numberWithOptions(
                                  decimal: true),
                          decoration:
                              InputDecoration(hintText: AppLocalizations.of(context)!.invoiceItemQtyHint),
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return AppLocalizations.of(context)!.commonRequired;
                            }
                            if (double.tryParse(v) == null) {
                              return AppLocalizations.of(context)!.commonInvalid;
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
                         Text(AppLocalizations.of(context)!.invoiceItemRate,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7))),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: rateCtrl,
                          keyboardType:
                              const TextInputType.numberWithOptions(
                                  decimal: true),
                          decoration:
                              InputDecoration(hintText: AppLocalizations.of(context)!.invoiceItemRateHint),
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return AppLocalizations.of(context)!.commonRequired;
                            }
                            if (double.tryParse(v) == null) {
                              return AppLocalizations.of(context)!.commonInvalid;
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
                child: ElevatedButton(
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
                  child: Text(AppLocalizations.of(context)!.invoiceAddItem,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.invoiceLineItems,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(AppLocalizations.of(context)!.invoiceLineItemsSubtitle,
              style: const TextStyle(
                  fontSize: 14, color: AppColors.gray500)),
          const SizedBox(height: 16),

          // Line items list
          if (lineItems.isEmpty)
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.gray50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: AppColors.gray200,
                    style: BorderStyle.solid),
              ),
              child: Center(
                child: Text(AppLocalizations.of(context)!.invoiceNoItems,
                    style: const TextStyle(color: AppColors.gray400)),
              ),
            )
          else
            ...lineItems.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              return Container(
                padding: const EdgeInsets.all(14),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardTheme.color,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.description,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${item.quantity % 1 == 0 ? item.quantity.toInt() : item.quantity} × $currency ${item.rate.toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontSize: 13,
                                color: AppColors.gray500),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end,
                      children: [
                        Text(
                          '$currency ${item.amount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(Icons.close,
                              size: 18,
                              color: AppColors.dangerRed),
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
            icon: const Icon(Icons.add),
            label: Text(AppLocalizations.of(context)!.invoiceAddItem),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
          ),

          const SizedBox(height: 20),

          // Tax rate
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.invoiceTaxRate,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500)),
              Row(
                children: [
                  for (final rate in [0.0, 5.0, 10.0, 15.0])
                    GestureDetector(
                      onTap: () => onTaxRateChanged(rate),
                      child: Container(
                        margin: const EdgeInsets.only(left: 6),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: taxRate == rate
                              ? AppColors.primaryBlue
                              : AppColors.gray100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '${rate.toStringAsFixed(0)}%',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: taxRate == rate
                                ? Colors.white
                                : AppColors.gray600,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Divider(color: AppColors.gray200),
          const SizedBox(height: 12),

          // Totals
          _TotalRow(
              label: AppLocalizations.of(context)!.invoiceSubtotal,
              value: '$currency ${totals['subtotal']!.toStringAsFixed(2)}'),
          const SizedBox(height: 6),
          _TotalRow(
              label: AppLocalizations.of(context)!.invoiceTax(taxRate.toStringAsFixed(0)),
              value:
                  '$currency ${totals['taxAmount']!.toStringAsFixed(2)}'),
          const Divider(color: AppColors.gray200, height: 24),
          _TotalRow(
            label: AppLocalizations.of(context)!.invoiceTotal,
            value: '$currency ${totals['total']!.toStringAsFixed(2)}',
            isTotal: true,
          ),
        ],
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 16 : 14,
            fontWeight:
                isTotal ? FontWeight.bold : FontWeight.normal,
            color: isTotal
                ? AppColors.primaryBlue
                : AppColors.gray600,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 18 : 14,
            fontWeight:
                isTotal ? FontWeight.bold : FontWeight.w500,
            color: isTotal
                ? AppColors.primaryBlue
                : null,
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
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.invoiceReviewHeading,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(AppLocalizations.of(context)!.invoiceReviewSubtitle,
              style: const TextStyle(
                  fontSize: 14, color: AppColors.gray500)),
          const SizedBox(height: 20),

          // Logo Upload
          _label(context, AppLocalizations.of(context)!.invoiceCompanyLogo),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: onLogoPicked,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.gray50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.gray300),
              ),
              child: logoPath != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(File(logoPath!), fit: BoxFit.cover),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.add_photo_alternate_outlined, color: AppColors.gray400),
                        const SizedBox(height: 4),
                        Text(AppLocalizations.of(context)!.invoiceAddLogo, style: const TextStyle(fontSize: 12, color: AppColors.gray500)),
                      ],
                    ),
            ),
          ),
          const SizedBox(height: 16),

          // Invoice date
          _label(context, AppLocalizations.of(context)!.invoiceInvoiceDate),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: invoiceDate,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              );
              if (date != null) onInvoiceDateChanged(date);
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.gray50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.gray300),
              ),
              child: Row(
                children: [
                  const Icon(Icons.calendar_today_outlined,
                      color: AppColors.gray400, size: 20),
                  const SizedBox(width: 12),
                  Text(
                    _formatDate(invoiceDate),
                    style: const TextStyle(fontSize: 15),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_drop_down,
                      color: AppColors.gray400),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Due date
          _label(context, AppLocalizations.of(context)!.invoiceDueDate),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: dueDate,
                firstDate: invoiceDate,
                lastDate: DateTime(2030),
              );
              if (date != null) onDueDateChanged(date);
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.gray50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.gray300),
              ),
              child: Row(
                children: [
                  const Icon(Icons.event_outlined,
                      color: AppColors.gray400, size: 20),
                  const SizedBox(width: 12),
                  Text(_formatDate(dueDate),
                      style: const TextStyle(fontSize: 15)),
                  const Spacer(),
                  const Icon(Icons.arrow_drop_down,
                      color: AppColors.gray400),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Quick due date presets
          Row(
            children: [
              for (final days in [7, 14, 30, 60])
                GestureDetector(
                  onTap: () => onDueDateChanged(
                      invoiceDate.add(Duration(days: days))),
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.gray100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Net $days',
                      style:  TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6)),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 20),

          _label(context, AppLocalizations.of(context)!.invoiceNotesLabel),
          const SizedBox(height: 8),
          TextField(
            controller: notesCtrl,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.invoiceNotesHint,
            ),
          ),

          const SizedBox(height: 16),

          _label(context, AppLocalizations.of(context)!.invoicePaymentTermsLabel),
          const SizedBox(height: 8),
          TextField(
            controller: paymentTermsCtrl,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.invoicePaymentTermsHint,
            ),
          ),

          const SizedBox(height: 16),

          // Signature Pad
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _label(context, AppLocalizations.of(context)!.invoiceSignatureLabel),
              TextButton(
                onPressed: () => signatureController.clear(),
                child: Text(AppLocalizations.of(context)!.commonClear, style: const TextStyle(color: AppColors.dangerRed)),
              ),
            ],
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: AppColors.gray50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.gray300),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Signature(
                controller: signatureController,
                backgroundColor: AppColors.gray50,
              ),
            ),
          ),
          if (signaturePath != null && signatureController.isEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(AppLocalizations.of(context)!.invoiceSignatureOverwrite, style: TextStyle(fontSize: 12, color: AppColors.gray500)),
            ),

          const SizedBox(height: 24),
          const Divider(color: AppColors.gray200),
          const SizedBox(height: 16),

          // Summary
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryPale,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                _SummaryRow(
                    label: AppLocalizations.of(context)!.invoiceSubtotal,
                    value:
                        '$currency ${totals['subtotal']!.toStringAsFixed(2)}'),
                const SizedBox(height: 6),
                _SummaryRow(
                    label: AppLocalizations.of(context)!.invoiceTax(taxRate.toStringAsFixed(0)),
                    value:
                        '$currency ${totals['taxAmount']!.toStringAsFixed(2)}'),
                const Divider(
                    color: AppColors.primaryBlue, height: 20),
                _SummaryRow(
                  label: AppLocalizations.of(context)!.invoiceTotal,
                  value:
                      '$currency ${totals['total']!.toStringAsFixed(2)}',
                  isTotal: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _label(context,String text) => Text(
        text,
        style:  TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7),
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

class _SummaryRow extends StatelessWidget {
  final String label, value;
  final bool isTotal;
  const _SummaryRow(
      {required this.label,
      required this.value,
      this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: TextStyle(
              fontSize: isTotal ? 15 : 13,
              fontWeight:
                  isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal
                  ? AppColors.primaryBlue
                  : AppColors.gray600,
            )),
        Text(value,
            style: TextStyle(
              fontSize: isTotal ? 18 : 13,
              fontWeight:
                  isTotal ? FontWeight.bold : FontWeight.w500,
              color: isTotal ? AppColors.primaryBlue : null,
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
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(top: BorderSide(color: AppColors.gray100)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          if (currentStep > 0)
            OutlinedButton(
              onPressed: onBack,
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(100, 52),
              ),
              child: Text(AppLocalizations.of(context)!.commonBack),
            ),
          if (currentStep > 0) const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: canProceed ? onNext : null,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 52),
              ),
              child: Text(
                currentStep == 2 ? AppLocalizations.of(context)!.invoiceCreateTitle : '${AppLocalizations.of(context)!.commonContinue} →',
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
