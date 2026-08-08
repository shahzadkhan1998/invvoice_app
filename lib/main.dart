import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app.dart';
import 'providers/auth_provider.dart';
import 'providers/invoice_provider.dart';
import 'providers/client_provider.dart';
import 'providers/theme_provider.dart';
import 'providers/subscription_provider.dart';
import 'providers/sync_provider.dart';
import 'providers/revenuecat_provider.dart';
import 'providers/color_provider.dart';
import 'providers/locale_provider.dart';
import 'providers/region_provider.dart';
import 'providers/catalog_provider.dart';
import 'providers/estimate_provider.dart';
import 'providers/recurring_provider.dart';

import 'firebase_options.dart';
import 'services/notification_service.dart';
import 'core/utils/currency_utils.dart';
import 'core/utils/invoice_number_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await GoogleSignIn.instance.initialize();

  // Pass all uncaught "fatal" errors from the framework to Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  await Hive.initFlutter();
  await Hive.openBox('invoices');
  await Hive.openBox('clients');
  await Hive.openBox('settings');
  await Hive.openBox('catalog');
  await Hive.openBox('estimates');
  await Hive.openBox('recurring');

  // Default the currency to the user's device locale on first launch.
  await CurrencyUtils.ensureDefaultCurrencySet();
  await InvoiceNumberUtils.load();

  final notificationService = NotificationService();
  await notificationService.init();

  // Created before runApp so recurring catch-up generation can push invoices
  // through the same provider instance the UI listens to.
  final invoiceProvider = InvoiceProvider();
  final recurringProvider = RecurringProvider();
  recurringProvider.generateDueInvoices(invoiceProvider);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider.value(value: invoiceProvider),
        ChangeNotifierProvider(create: (_) => ClientProvider()),
        ChangeNotifierProvider(create: (_) => SubscriptionProvider()),
        ChangeNotifierProvider(create: (_) => SyncProvider()),
        ChangeNotifierProxyProvider<SubscriptionProvider, RevenueCatProvider>(
          create: (_) => RevenueCatProvider(),
          update: (_, sub, rc) => rc!..attach(sub),
        ),
        ChangeNotifierProvider(create: (_) => ColorProvider()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => RegionProvider()),
        ChangeNotifierProvider(create: (_) => CatalogProvider()),
        ChangeNotifierProvider(create: (_) => EstimateProvider()),
        ChangeNotifierProvider.value(value: recurringProvider),
      ],
      child: const InvoiceApp(),
    ),
  );
}
