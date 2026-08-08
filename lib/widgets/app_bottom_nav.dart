import 'package:flutter/material.dart';

class AppNavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final int? badge;

  const AppNavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    this.badge,
  });
}

/// Premium floating bottom navigation bar with a sliding pill indicator.
class AppBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<AppNavItem> items;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;
    final muted = theme.colorScheme.onSurfaceVariant;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            theme.scaffoldBackgroundColor.withValues(alpha: 0.6),
          ],
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 6, 16, 12),
          child: Container(
            height: 68,
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: theme.dividerColor.withValues(alpha: 0.6),
              ),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.shadow.withValues(alpha: 0.14),
                  blurRadius: 24,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              children: List.generate(items.length, (index) {
                final item = items[index];
                final selected = currentIndex == index;
                return Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => onTap(index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 260),
                          curve: Curves.easeOutCubic,
                          width: selected ? 54 : 42,
                          height: 32,
                          decoration: BoxDecoration(
                            color: selected
                                ? primary.withValues(alpha: 0.14)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: [
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 180),
                                transitionBuilder: (child, anim) =>
                                    ScaleTransition(
                                  scale: anim,
                                  child: child,
                                ),
                                child: Icon(
                                  selected ? item.activeIcon : item.icon,
                                  key: ValueKey(selected),
                                  size: 22,
                                  color: selected
                                      ? primary
                                      : muted.withValues(alpha: 0.9),
                                ),
                              ),
                              if (item.badge != null && item.badge! > 0)
                                Positioned(
                                  top: -3,
                                  right: -2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.error,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      '${item.badge}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 220),
                          style: TextStyle(
                            fontSize: 10.5,
                            fontWeight:
                                selected ? FontWeight.w700 : FontWeight.w500,
                            color: selected ? primary : muted,
                          ),
                          child: Text(item.label),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
