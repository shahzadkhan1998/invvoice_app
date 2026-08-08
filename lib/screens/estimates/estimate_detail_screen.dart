import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../models/estimate.dart';
import '../../models/invoice.dart';
import '../../providers/estimate_provider.dart';
import '../../providers/invoice_provider.dart';
import '../../providers/client_provider.dart';
import '../../providers/color_provider.dart';
import '../../providers/region_provider.dart';
import '../../providers/subscription_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../services/pdf_service.dart';
import '../../widgets/app_avatar.dart';
import '../../widgets/estimate_status_badge.dart';
import 'create_estimate_screen.dart';

class EstimateDetailScreen extends StatelessWidget {
  final Estimate estimate;
  const EstimateDetailScreen({super.key, required this.estimate});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final client =
        context.watch<ClientProvider>().getClientById(estimate.clientId);

    return Scaffold(
      appBar: AppBar(
        title: Text(estimate.estimateNumber),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CreateEstimateScreen(editEstimate: estimate),
              ),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) => _handleAction(context, value),
            itemBuilder: (_) => [
              if (estimate.status == EstimateStatus.draft)
                PopupMenuItem(
                  value: 'sent',
                  child: Row(children: [
                    const Icon(Icons.send_outlined, color: AppColors.primaryBlue),
                    const SizedBox(width: 8),
                    Text(loc.estimateMarkSent),
                  ]),
                ),
              if (estimate.status != EstimateStatus.accepted &&
                  estimate.status != EstimateStatus.declined)
                PopupMenuItem(
                  value: 'accepted',
                  child: Row(children: [
                    const Icon(Icons.check_circle_outline,
                        color: AppColors.successGreen),
                    const SizedBox(width: 8),
                    Text(loc.estimateMarkAccepted),
                  ]),
                ),
              if (estimate.status != EstimateStatus.accepted &&
                  estimate.status != EstimateStatus.declined)
                PopupMenuItem(
                  value: 'declined',
                  child: Row(children: [
                    const Icon(Icons.cancel_outlined, color: AppColors.dangerRed),
                    const SizedBox(width: 8),
                    Text(loc.estimateMarkDeclined),
                  ]),
                ),
              PopupMenuItem(
                value: 'pdf',
                child: Row(children: [
                  const Icon(Icons.picture_as_pdf_outlined,
                      color: AppColors.primaryBlue),
                  const SizedBox(width: 8),
                  Text(loc.commonExportPdf),
                ]),
              ),
              PopupMenuItem(
                value: 'share',
                child: Row(children: [
                  const Icon(Icons.share_outlined, color: AppColors.primaryBlue),
                  const SizedBox(width: 8),
                  Text(loc.commonSharePdf),
                ]),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(children: [
                  const Icon(Icons.delete_outline, color: AppColors.dangerRed),
                  const SizedBox(width: 8),
                  Text(loc.commonDelete,
                      style: const TextStyle(color: AppColors.dangerRed)),
                ]),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeaderCard(estimate: estimate),
            const SizedBox(height: 20),
            if (client != null) ...[
              _sectionTitle(context, loc.invoiceDetailBillTo),
              const SizedBox(height: 10),
              _ClientCard(
                  clientName: client.name,
                  clientEmail: client.email,
                  clientPhone: client.phone),
              const SizedBox(height: 20),
            ],
            _sectionTitle(context, loc.invoiceDetailItems),
            const SizedBox(height: 10),
            _ItemsTable(lineItems: estimate.lineItems),
            const SizedBox(height: 20),
            _TotalsCard(estimate: estimate),
            const SizedBox(height: 20),
            if (estimate.notes != null && estimate.notes!.isNotEmpty) ...[
              _sectionTitle(context, loc.invoiceDetailNotes),
              const SizedBox(height: 10),
              _InfoCard(child: Text(estimate.notes!)),
              const SizedBox(height: 20),
            ],
            if (estimate.paymentTerms != null &&
                estimate.paymentTerms!.isNotEmpty) ...[
              _sectionTitle(context, loc.invoiceDetailPaymentTerms),
              const SizedBox(height: 10),
              _InfoCard(child: Text(estimate.paymentTerms!)),
              const SizedBox(height: 20),
            ],
            if (estimate.convertedInvoiceId != null) ...[
              _sectionTitle(context, loc.estimateConvertedTitle),
              const SizedBox(height: 10),
              _InfoCard(
                child: Row(
                  children: [
                    const Icon(Icons.check_circle_outline,
                        color: AppColors.successGreen, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        loc.estimateConvertedMessage(
                            estimate.convertedInvoiceId!),
                        style: const TextStyle(color: AppColors.successGreen),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
            if (estimate.status != EstimateStatus.accepted &&
                estimate.status != EstimateStatus.declined &&
                estimate.convertedInvoiceId == null) ...[
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton.icon(
                  onPressed: () => _convertToInvoice(context),
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.successGreen,
                  ),
                  icon: const Icon(Icons.publish_outlined),
                  label: Text(
                    loc.estimateConvertToInvoice,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _generatePdf(context, share: false),
                    icon: const Icon(Icons.picture_as_pdf_outlined, size: 18),
                    label: Text(loc.commonExportPdf),
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(0, 50)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _generatePdf(context, share: true),
                    icon: const Icon(Icons.share_outlined, size: 18),
                    label: Text(loc.commonShare),
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(0, 50)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            letterSpacing: 0.3,
          ),
    );
  }

  Future<void> _convertToInvoice(BuildContext context) async {
    final loc = AppLocalizations.of(context)!;
    final invoice = await context.read<EstimateProvider>().convertToInvoice(
          estimate.id,
          invoiceProvider: context.read<InvoiceProvider>(),
        );
    if (!context.mounted) return;
    if (invoice != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loc.estimateConvertedSnackbar),
          backgroundColor: AppColors.successGreen,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loc.estimateConvertFailed),
          backgroundColor: AppColors.dangerRed,
        ),
      );
    }
  }

  Future<void> _generatePdf(BuildContext context, {required bool share}) async {
    final loc = AppLocalizations.of(context)!;
    final prefs = await SharedPreferences.getInstance();
    final client =
        context.read<ClientProvider>().getClientById(estimate.clientId);
    if (client == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(children: [
          const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                  strokeWidth: 2, color: Colors.white)),
          const SizedBox(width: 12),
          Text(loc.commonGeneratingPdf),
        ]),
        duration: const Duration(seconds: 2),
      ),
    );

    try {
      final l10n = AppLocalizations.of(context)!;
      final region = context.read<RegionProvider>();
      final accent = context.read<ColorProvider>().accent;
      final accentHex =
          '#${(accent.toARGB32() & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase()}';
      final isPro = context.read<SubscriptionProvider>().isPro;
      final template = PdfService.templateFromString(prefs.getString('pdf_template'));
      final file = await PdfService.generateEstimatePdf(
        l10n: l10n,
        estimate: estimate,
        client: client,
        businessName: prefs.getString('business_name') ?? 'My Business',
        businessEmail: prefs.getString('business_email') ?? '',
        businessPhone: prefs.getString('business_phone'),
        businessAddress: prefs.getString('business_address'),
        businessTaxId:
            region.businessTaxId.isEmpty ? null : region.businessTaxId,
        taxIdLabel: region.config?.taxIdLabel,
        taxLabel: region.config?.taxLabel,
        accentHex: accentHex,
        template: template,
        watermark: !isPro,
      );

      if (share) {
        await PdfService.sharePdf(file);
      } else {
        await PdfService.printPdf(file);
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(loc.estimatePdfFailed),
            backgroundColor: AppColors.dangerRed,
          ),
        );
      }
    }
  }

  void _handleAction(BuildContext context, String value) {
    switch (value) {
      case 'sent':
        context.read<EstimateProvider>().setStatus(
            estimate.id, EstimateStatus.sent);
        break;
      case 'accepted':
        context.read<EstimateProvider>().setStatus(
            estimate.id, EstimateStatus.accepted);
        break;
      case 'declined':
        context.read<EstimateProvider>().setStatus(
            estimate.id, EstimateStatus.declined);
        break;
      case 'pdf':
        _generatePdf(context, share: false);
        break;
      case 'share':
        _generatePdf(context, share: true);
        break;
      case 'delete':
        _confirmDelete(context);
        break;
    }
  }

  void _confirmDelete(BuildContext context) async {
    final loc = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(loc.deleteEstimateTitle),
        content: Text(loc.deleteEstimateMessage(estimate.estimateNumber)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(loc.commonCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.dangerRed,
              minimumSize: const Size(80, 40),
            ),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(loc.commonDelete),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      context.read<EstimateProvider>().deleteEstimate(estimate.id);
      Navigator.pop(context);
    }
  }
}

class _HeaderCard extends StatelessWidget {
  final Estimate estimate;
  const _HeaderCard({required this.estimate});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(20),
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Stack(
          children: [
            Positioned(
              right: -50,
              top: -50,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.pdfEstimate,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            estimate.estimateNumber,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      EstimateStatusBadge(status: estimate.status),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    loc.estimateDetailTotal,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${estimate.currency} ${estimate.total.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _DateChip(label: loc.estimateIssueDate, date: estimate.issueDate),
                      _DateChip(
                        label: loc.estimateExpiryDate,
                        date: estimate.expiryDate,
                        isExpired: estimate.expiryDate.isBefore(DateTime.now()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateChip extends StatelessWidget {
  final String label;
  final DateTime date;
  final bool isExpired;

  const _DateChip({
    required this.label,
    required this.date,
    this.isExpired = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isExpired ? AppColors.dangerRed : Colors.white70;
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
      'Nov', 'Dec',
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 10, color: color, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            '${date.day} ${months[date.month - 1]} ${date.year}',
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class _ClientCard extends StatelessWidget {
  final String clientName;
  final String clientEmail;
  final String? clientPhone;

  const _ClientCard({
    required this.clientName,
    required this.clientEmail,
    this.clientPhone,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Row(
        children: [
          AppAvatar(
              initials: clientName.isNotEmpty ? clientName[0] : '?', size: 48),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(clientName,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700)),
                Text(clientEmail,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        )),
                if (clientPhone != null)
                  Text(clientPhone!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemsTable extends StatelessWidget {
  final List<LineItem> lineItems;
  const _ItemsTable({required this.lineItems});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(loc.invoiceItemDescription,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
                SizedBox(
                  width: 36,
                  child: Text(loc.pdfQty,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: 56,
                  child: Text(loc.pdfRate,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: 64,
                  child: Text(loc.pdfAmount,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          )),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: scheme.outlineVariant),
          ...lineItems.asMap().entries.map((entry) {
            final item = entry.value;
            final isLast = entry.key == lineItems.length - 1;
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: isLast
                    ? null
                    : Border(bottom: BorderSide(color: scheme.outlineVariant)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      item.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 36,
                    child: Text(
                      _qty(item.quantity),
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 56,
                    child: Text(
                      item.rate.toStringAsFixed(2),
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 64,
                    child: Text(
                      item.amount.toStringAsFixed(2),
                      textAlign: TextAlign.right,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  String _qty(double quantity) {
    return quantity % 1 == 0
        ? quantity.toInt().toString()
        : quantity.toStringAsFixed(2);
  }
}

class _TotalsCard extends StatelessWidget {
  final Estimate estimate;
  const _TotalsCard({required this.estimate});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: scheme.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.primary.withValues(alpha: 0.18)),
      ),
      child: Column(
        children: [
          _TotalRow(
              label: loc.invoiceSubtotal,
              value: '${estimate.currency} ${estimate.subtotal.toStringAsFixed(2)}'),
          const SizedBox(height: 8),
          if (estimate.taxAmount > 0)
            _TotalRow(
                label: loc.invoiceTax(estimate.taxRate.toStringAsFixed(0)),
                value: '${estimate.currency} ${estimate.taxAmount.toStringAsFixed(2)}'),
          Divider(color: scheme.primary, height: 24),
          _TotalRow(
            label: loc.invoiceTotal,
            value: '${estimate.currency} ${estimate.total.toStringAsFixed(2)}',
            isTotal: true,
          ),
        ],
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

class _InfoCard extends StatelessWidget {
  final Widget child;
  const _InfoCard({required this.child});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                  height: 1.5,
                ) ??
            const TextStyle(),
        child: child,
      ),
    );
  }
}
