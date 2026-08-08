import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/recurring_provider.dart';
import '../../models/recurring_profile.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_avatar.dart';
import 'create_recurring_screen.dart';

class RecurringListScreen extends StatefulWidget {
  const RecurringListScreen({super.key});

  @override
  State<RecurringListScreen> createState() => _RecurringListScreenState();
}

class _RecurringListScreenState extends State<RecurringListScreen> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Consumer<RecurringProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(title: Text(loc.recurringListTitle)),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : provider.profiles.isEmpty
                  ? _EmptyState(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const CreateRecurringScreen()),
                      ),
                    )
                  : RefreshIndicator(
                      onRefresh: provider.load,
                      color: Theme.of(context).colorScheme.primary,
                      child: ListView.separated(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
                        itemCount: provider.profiles.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                        itemBuilder: (ctx, i) => _RecurringCard(
                          profile: provider.profiles[i],
                        ),
                      ),
                    ),
          floatingActionButton: FloatingActionButton(
            heroTag: 'fab-recurring',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CreateRecurringScreen()),
            ),
            child: const Icon(Icons.add_rounded),
          ),
        );
      },
    );
  }
}

class _EmptyState extends StatelessWidget {
  final VoidCallback onTap;
  const _EmptyState({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event_repeat_outlined,
                size: 56, color: scheme.onSurfaceVariant),
            const SizedBox(height: 12),
            Text(loc.recurringListEmpty,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 6),
            Text(
              loc.recurringListEmptySubtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: onTap,
              icon: const Icon(Icons.add_rounded),
              label: Text(loc.recurringCreateTitle),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecurringCard extends StatelessWidget {
  final RecurringProfile profile;
  const _RecurringCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CreateRecurringScreen(editProfile: profile)),
      ),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Column(
          children: [
            Row(
              children: [
                AppAvatar(
                  initials:
                      profile.title.isNotEmpty ? profile.title[0] : '?',
                  size: 44,
                  radius: 13,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        profile.clientName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${profile.currency} ${_money(profile.total)}',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    Switch(
                      value: profile.active,
                      onChanged: (v) => context
                          .read<RecurringProvider>()
                          .setActive(profile.id, v),
                    ),
                  ],
                ),
              ],
            ),
            Divider(height: 1, color: scheme.outlineVariant),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      _MetaChip(
                        icon: Icons.repeat_rounded,
                        label: _frequencyLabel(context, profile.frequency),
                      ),
                      _MetaChip(
                        icon: Icons.event_rounded,
                        label:
                            '${loc.recurringNextRun}: ${_date(profile.nextRunDate)}',
                        color: profile.active ? scheme.onSurfaceVariant : AppColors.dangerRed,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(Icons.delete_outline,
                      size: 18, color: AppColors.dangerRed),
                  onPressed: () => _confirmDelete(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _confirmDelete(BuildContext context) async {
    final loc = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(loc.recurringDeleteTitle),
        content: Text(loc.recurringDeleteMessage(profile.title)),
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
      await context.read<RecurringProvider>().deleteProfile(profile.id);
    }
  }

  String _frequencyLabel(BuildContext context, RecurrenceFrequency f) {
    final loc = AppLocalizations.of(context)!;
    switch (f) {
      case RecurrenceFrequency.weekly:
        return loc.recurringFrequencyWeekly;
      case RecurrenceFrequency.biweekly:
        return loc.recurringFrequencyBiweekly;
      case RecurrenceFrequency.quarterly:
        return loc.recurringFrequencyQuarterly;
      case RecurrenceFrequency.yearly:
        return loc.recurringFrequencyYearly;
      case RecurrenceFrequency.monthly:
        return loc.recurringFrequencyMonthly;
    }
  }

  String _money(double value) {
    final isWhole = value == value.roundToDouble();
    return isWhole ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  }

  String _date(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
      'Nov', 'Dec',
    ];
    return '${date.day} ${months[date.month - 1]}';
  }
}

class _MetaChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _MetaChip({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final c = color ?? scheme.onSurfaceVariant;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 12, color: c),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: c,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
