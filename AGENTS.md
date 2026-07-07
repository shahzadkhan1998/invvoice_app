# AGENTS.md — Invoice App

## Commands

```bash
flutter pub get          # install dependencies
flutter run              # run on connected device/emulator (Android only configured)
flutter analyze          # lint (uses package:flutter_lints)
flutter test             # run tests
flutter gen-l10n         # regenerate localization code from ARB files
dart run build_runner build  # run codegen (hive_generator is a dep but models use manual toJson/fromJson, not @HiveType)
```

## Architecture

- **Entrypoint**: `lib/main.dart` — initializes Firebase, Hive boxes (`invoices`, `clients`, `settings`), NotificationService, then runs `InvoiceApp` with `MultiProvider`.
- **State Management**: Provider (`ChangeNotifierProvider`) — providers in `lib/providers/`.
- **App name**: `InvoiceFlow` (`lib/app.dart:22`), package name `invoice_app`.
- **Routing**: Named routes (`/login`, `/register`, `/home`) + inline `home` key. No Navigator 2.0 / GoRouter.
- **Screens**: Bottom nav with 4 tabs: Dashboard, Invoices, Clients, Settings (`home_screen.dart`).
- **Navigation**: `IndexedStack` — all 4 screens stay mounted.

## Data Layer

- **Local**: Hive (`lib/providers/*`) — models (`invoice.dart`, `client.dart`) use manual `toJson`/`fromJson`, no Hive annotations. Box keys are invoice/client IDs.
- **Remote**: Firebase (Auth, Firestore, Storage) configured but **actual Firestore/Storage sync code appears incomplete** — providers read/write only to Hive. The `isSynced` field exists on models but no sync logic found.
- **Offline-first**: Data stored locally via Hive; Firestore sync is declared but not wired through providers.

## Key Details

- **Default currency**: AED (hardcoded in `invoice.dart:39`, `client.dart:21`)
- **Invoice statuses**: `draft`, `sent`, `paid`, `overdue`, `cancelled` (`invoice.dart:142`)
- **Overdue detection**: Runs on `loadInvoices()` — marks `sent` invoices past `dueDate` as `overdue` (`invoice_provider.dart:76-83`)
- **Invoice number format**: `INV-{year}-{count+1:04d}` (`invoice_provider.dart:70-73`)
- **Platforms**: Android only (Firebase options only for Android; iOS/macOS/Windows/Linux/web throw `UnsupportedError`)
- **Firebase project**: `invoice-app-flutter-072026` (`firebase_options.dart:59`)
- **Theme**: Light/dark toggle persisted via `SharedPreferences` key `theme_mode`
- **Notifications**: Singleton `NotificationService` (daily reminder, timezone-aware)
- **PDF output**: Saved to `getApplicationDocumentsDirectory()` (`pdf_service.dart:304-308`). `PdfService.generateInvoicePdf()` now requires `required AppLocalizations l10n` parameter.
- **Localization**: Flutter l10n via ARB files in `lib/l10n/`. Supported locales: `en`, `ar`, `fr`, `es`, `ur`, `zh`. Regenerate with `flutter gen-l10n`. Import generated code as `package:invoice_app/l10n/app_localizations.dart`. ARB placeholder methods use **positional parameters** (e.g., `l10n.invoiceTax(taxRate)` not `l10n.invoiceTax(taxRate: taxRate)`).
- **Assets**: `assets/images/`, `assets/icons/` (referenced in pubspec.yaml)

## Tests

- `test/widget_test.dart` is the default Flutter counter test — **it will fail** because the actual app has no counter. Tests need rewriting to match real screens.

## Firebase Setup (if reconfiguring)

```bash
# Regenerate firebase_options.dart (for Android only currently)
flutterfire configure --project=invoice-app-flutter-072026
```

## Gotchas

- `hive_generator` and `@HiveType` annotations are **not used** despite being in `pubspec.yaml`. Models use manual serialization. Running `build_runner` produces nothing relevant.
- App uses `firebase_crashlytics` + `firebase_analytics` — these require Firebase initialization to work; tests without Firebase setup will fail.
- The `signature` package is listed as a dependency but `PdfService` reads signature from a file path (`invoice.signatureUrl`), not from the `signature` package's controller.
