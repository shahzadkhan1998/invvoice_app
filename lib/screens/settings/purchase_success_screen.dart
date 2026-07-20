import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/subscription_provider.dart';

class PurchaseSuccessScreen extends StatelessWidget {
  const PurchaseSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final sub = context.watch<SubscriptionProvider>();

    // When Pro becomes active, auto-advance after the animation plays.
    if (sub.isPro) {
      Future.microtask(() async {
        await Future.delayed(const Duration(seconds: 2));
        if (context.mounted) {
          Navigator.of(context)
            ..popUntil((route) => route.isFirst)
            ..pop();
        }
      });
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/purchase_success.json',
                height: 200,
                repeat: false,
              ),
              const SizedBox(height: 24),
              Text(
                l10n.purchaseSuccessTitle,
                style: const TextStyle(
                    fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                l10n.purchaseSuccessSubtitle,
                style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: sub.isPro
                      ? null
                      : () {
                          Navigator.of(context)
                            ..popUntil((route) => route.isFirst)
                            ..pop();
                        },
                  child: Text(l10n.purchaseSuccessContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
