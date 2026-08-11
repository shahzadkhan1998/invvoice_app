import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewService {
  static const String _requestedKey = 'has_requested_review';

  static Future<void> requestFirstInvoiceReview() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (prefs.getBool(_requestedKey) ?? false) return;
      final review = InAppReview.instance;
      if (await review.isAvailable()) {
        await review.requestReview();
      }
      await prefs.setBool(_requestedKey, true);
    } catch (_) {}
  }
}
