import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/catalog_provider.dart';
import '../../models/catalog_item.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_empty_state.dart';

/// Manage the reusable products/services catalog.
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  Future<void> _addItem(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final descCtrl = TextEditingController();
    final rateCtrl = TextEditingController();
    final taxCtrl = TextEditingController(text: '0');
    final formKey = GlobalKey<FormState>();

    final saved = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.invoiceAddLineItem),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: descCtrl,
                autofocus: true,
                decoration: InputDecoration(hintText: l10n.invoiceItemDescriptionHint),
                validator: (v) =>
                    v == null || v.trim().isEmpty ? l10n.commonRequired : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: rateCtrl,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(hintText: l10n.invoiceItemRateHint),
                validator: (v) {
                  if (v == null || v.isEmpty) return l10n.commonRequired;
                  if (double.tryParse(v) == null) return l10n.commonInvalid;
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: taxCtrl,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(hintText: l10n.invoiceTaxRate),
                validator: (v) {
                  if (v == null || v.isEmpty) return l10n.commonRequired;
                  if (double.tryParse(v) == null) return l10n.commonInvalid;
                  return null;
                },
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l10n.commonCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(minimumSize: const Size(80, 40)),
            onPressed: () {
              if (!formKey.currentState!.validate()) return;
              Navigator.pop(ctx, true);
            },
            child: Text(l10n.commonSave),
          ),
        ],
      ),
    );

    if (saved == true && context.mounted) {
      final item = CatalogItem(
        id: const Uuid().v4(),
        description: descCtrl.text.trim(),
        rate: double.parse(rateCtrl.text),
        taxRate: double.parse(taxCtrl.text),
      );
      await context.read<CatalogProvider>().addItem(item);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.catalogAddSnackbar),
            backgroundColor: AppColors.successGreen,
          ),
        );
      }
    }
  }

  Future<void> _deleteItem(BuildContext context, CatalogItem item) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.catalogDeleteTitle),
        content: Text(l10n.catalogDeleteMessage(item.description)),
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
            child: Text(l10n.commonDelete),
          ),
        ],
      ),
    );
    if (confirmed == true && context.mounted) {
      await context.read<CatalogProvider>().deleteItem(item.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return Consumer<CatalogProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.catalogTitle),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_rounded),
                onPressed: () => _addItem(context),
              ),
            ],
          ),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : provider.items.isEmpty
                  ? AppEmptyState(
                      icon: Icons.inventory_2_outlined,
                      title: l10n.catalogEmpty,
                      subtitle: l10n.catalogEmptySubtitle,
                      actionLabel: l10n.invoiceAddItem,
                      onAction: () => _addItem(context),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
                      itemCount: provider.items.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 10),
                      itemBuilder: (ctx, i) {
                        final item = provider.items[i];
                        return Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: scheme.surface,
                            borderRadius: BorderRadius.circular(16),
                            border:
                                Border.all(color: scheme.outlineVariant),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: scheme.primary.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.category_outlined,
                                    size: 20, color: scheme.primary),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.description,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                              fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '${item.rate.toStringAsFixed(2)}'
                                      '${item.taxRate > 0 ? '  •  ${item.taxRate.toStringAsFixed(0)}%' : ''}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: scheme.onSurfaceVariant),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete_outline,
                                    size: 20, color: AppColors.dangerRed),
                                onPressed: () => _deleteItem(ctx, item),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
        );
      },
    );
  }
}
