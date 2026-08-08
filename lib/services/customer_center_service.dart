import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/models/customer_info_wrapper.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart' as rcui;
import 'package:invoice_app/l10n/app_localizations.dart';

/// Thin wrapper around the RevenueCatUI Customer Center.
///
/// The Customer Center lets users manage subscriptions, restore purchases,
/// and request refunds natively. It is configured remotely in the RevenueCat
/// dashboard.
class CustomerCenterService {
  CustomerCenterService._();

  /// Presents the Customer Center modally.
  ///
  /// Returns `true` if the sheet was presented successfully, `false`
  /// otherwise (e.g. on unsupported platforms).
  static Future<bool> present(BuildContext context) async {
    try {
      await rcui.RevenueCatUI.presentCustomerCenter(
        onRestoreCompleted: (CustomerInfo info) {
          if (!context.mounted) return;
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(AppLocalizations.of(context)!.purchaseRestored),
              ),
            );
        },
        onRestoreFailed: (error) {
          if (!context.mounted) return;
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content:
                    Text(AppLocalizations.of(context)!.purchaseErrorGeneric),
              ),
            );
        },
      );
      return true;
    } on MissingPluginException {
      return false;
    } catch (_) {
      return false;
    }
  }
}
