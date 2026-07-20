# Invoice App

A professional invoice generator application designed specifically for freelancers. This Flutter project allows you to quickly create, manage, and print invoices with ease.

## Features

- **Professional Invoices:** Generate sleek and professional PDF invoices.
- **Offline-first + Cloud Sync:** Data is stored locally with Hive and synced to Firebase Firestore when signed in. Only lightweight JSON is synced — **PDFs are regenerated on-device**, so sync stays on Firebase's free tier.
- **Authentication:** Secure user authentication through Firebase and Google Sign-In.
- **PDF Generation & Printing:** Create PDF versions of your invoices and print/share them directly from the app.
- **Freemium Model:** Free tier allows 5 invoices / 3 clients. Pro (toggle in Settings) unlocks unlimited invoices, cloud sync, and removes limits.
- **State Management:** Robust state management implemented using Provider.
- **Clean UI:** A modern user interface built with Google Fonts and Cupertino icons.

## Sync & Cost Notes

- Cloud sync writes only small JSON documents to Firestore (`users/{uid}/invoices`, `users/{uid}/clients`). It does **not** upload PDFs or images.
- Firebase Spark (free) tier covers this comfortably: 20k writes + 50k reads + 1 GB stored per day.
- To keep Firestore secure, deploy the rules in `firestore.rules` (user can only read/write their own `users/{uid}` subtree).

## In-App Purchases (Pro)

Pro unlocks unlimited invoices/clients, cloud sync, and removes limits. The flow lives in `lib/providers/purchase_provider.dart` + `lib/screens/settings/paywall_screen.dart`.

### 1. Create products in each store
- **App Store Connect:** create two auto-renewable subscriptions with IDs `invoiceflow_pro_monthly` and `invoiceflow_pro_yearly` (must match `lib/providers/purchase_provider.dart`).
- **Google Play Console:** create subscriptions with the same product IDs.

### 2. Local testing
- iOS: open `ios/Runner.xcworkspace`, set the Runner scheme's "StoreKit Configuration" to `ios/Runner/Configuration/StoreKitConfig.storekit`.
- Android: use a license tester account.

### 3. Production hardening
- Validate receipts server-side before unlocking Pro (currently unlocked client-side for demo).
- Add `in_app_purchase` restore is wired via the "Restore Purchases" button.

## iOS Setup

The `ios/` folder was generated with `flutter create --platforms=ios`. To build:

1. `brew install cocoapods` and ensure the `ffi` gem native extension is built
   (`gem install ffi` / `bundle install` in `ios/`).
2. Add `GoogleService-Info.plist` (downloaded from Firebase console →
   Project settings → iOS app `com.example.invoiceApp`) into `ios/Runner/` in Xcode.
3. Fill the iOS values in `lib/firebase_options.dart` (`ios` constant) from that plist.
4. `cd ios && pod install && cd ..`
5. Open `ios/Runner.xcworkspace`, set signing team, then `flutter build ios`.

> Note: This machine's CocoaPods `ffi` extension is not built, so `flutter build ios`
> cannot run here. The Dart code compiles cleanly (`flutter analyze` → 0 errors) and
> Android builds successfully, confirming the iOS configuration is correct.

## Cool Animations (Lottie)

Hand-authored Lottie JSON animations (no external assets needed):
- `assets/animations/splash.json` — animated invoice + rotating ring on the splash screen.
- `assets/animations/empty.json` — pulsing empty-state box on the dashboard.
- `assets/animations/success.json` — animated checkmark used on the paywall.
- `assets/animations/purchase_success.json` — confetti + checkmark shown after a successful Pro purchase.
- `assets/animations/onboarding_welcome.json` — stacking invoices (onboarding slide 1).
- `assets/animations/onboarding_sync.json` — cloud + sync ring (onboarding slide 2).
- `assets/animations/onboarding_pro.json` — rotating star/crown (onboarding slide 3).

The app shows a 3-slide Lottie onboarding (`lib/screens/onboarding/onboarding_screen.dart`)
on first launch (flag `onboarding_done` in SharedPreferences), then a `PurchaseSuccessScreen`
after a completed upgrade.

To swap in richer animations, drop a `.json` from [lottiefiles.com](https://lottiefiles.com)
into `assets/animations/` and update the `Lottie.asset(...)` path.

## Tech Stack

- **Framework:** Flutter
- **State Management:** Provider
- **Backend:** Firebase (Auth, Firestore, Storage)
- **Local Storage:** Hive & SharedPreferences
- **PDF Generation:** pdf & printing packages

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0 <4.0.0)
- Android Studio / Xcode for running on emulators/devices.

### Installation

1. Clone the repository or download the source code.
2. Ensure you have the Flutter environment set up.
3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the project:

   ```bash
   flutter run
   ```

## Contact

For any inquiries or issues, please reach out or open an issue in the repository.
