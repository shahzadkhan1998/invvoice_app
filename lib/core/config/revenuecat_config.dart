/// RevenueCat SDK configuration.
///
/// The RevenueCat API key is a public SDK key — by design it is embedded in
/// the app binary (the SDK signs requests itself). Do NOT treat it as a
/// secret, but do keep it scoped to this config file so it is easy to swap
/// between the test / production keys.
class RevenueCatConfig {
  RevenueCatConfig._();

  /// RevenueCat public SDK key.
  ///
  /// `test_` prefix = sandbox/test mode. Replace with the production key
  /// (`appl_`/`goog_`) before shipping to the App Store / Play Store.
  static const String apiKey = 'test_vRrNvetSnVhlMPXDimPNXaKYhFp';

  /// The entitlement that unlocks "invoice generator Pro".
  ///
  /// Must match the entitlement identifier created in the RevenueCat
  /// dashboard (Project settings → Entitlements). This app's entitlement is
  /// named "invoice generator Pro" (with spaces).
  static const String proEntitlementId = 'invoice generator Pro';

  /// Package identifiers used by the paywall. Packages are configured in the
  /// RevenueCat dashboard (Offerings) and map to the store products.
  ///
  /// Prefer these when looking up packages so the paywall is driven entirely
  /// by the RevenueCat configuration rather than hard-coded product IDs.
  static const String packageLifetime = 'lifetime';
  static const String packageYearly = 'yearly';
  static const String packageMonthly = 'monthly';
}
