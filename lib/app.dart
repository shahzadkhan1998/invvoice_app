import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'providers/theme_provider.dart';
import 'providers/auth_provider.dart';
import 'providers/color_provider.dart';
import 'providers/locale_provider.dart';
import 'core/theme/app_theme.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/onboarding/splash_screen.dart';
import 'screens/onboarding/onboarding_screen.dart';
import 'screens/home/home_screen.dart';

class InvoiceApp extends StatelessWidget {
  const InvoiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer4<ThemeProvider, AuthProvider, ColorProvider, LocaleProvider>(
      builder: (context, theme, auth, color, locale, _) {
        return MaterialApp(
          title: 'InvoiceFlow',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: theme.themeMode,
          locale: locale.locale,
          home: auth.isLoading
              ? const SplashScreen()
              : const _InitialScreen(),
          navigatorObservers: [
            FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routes: {
            '/login': (_) => const LoginScreen(),
            '/register': (_) => const RegisterScreen(),
            '/home': (_) => const HomeScreen(),
          },
        );
      },
    );
  }
}

/// Resolves the first real screen: shows onboarding on first launch,
/// otherwise the main app.
class _InitialScreen extends StatelessWidget {
  const _InitialScreen();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: SharedPreferences.getInstance().then(
        (p) => p.getBool('onboarding_done') ?? false,
      ),
      builder: (context, snap) {
        if (!snap.hasData) return const SplashScreen();
        return snap.data == true
            ? const HomeScreen()
            : const OnboardingScreen();
      },
    );
  }
}
