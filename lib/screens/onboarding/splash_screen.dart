import 'package:flutter/material.dart';
import 'package:invoice_app/l10n/app_localizations.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              scheme.primary,
              Color.lerp(scheme.primary, Colors.black, isDark ? 0.4 : 0.22)!,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: -80,
              top: -80,
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: -60,
              bottom: -60,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.06),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.16),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: const Icon(Icons.receipt_long_rounded,
                        color: Colors.white, size: 48),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    l10n.appTitle,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.splashSubtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 48),
                  const SizedBox(
                    width: 32,
                    height: 32,
                    child: CircularProgressIndicator(
                        color: Colors.white, strokeWidth: 2.5),
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
