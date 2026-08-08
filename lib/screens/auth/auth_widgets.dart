import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/theme/app_theme.dart';

/// Bordered, softly-filled input decoration used by the auth screens.
InputDecoration authInputDecoration({
  required ThemeData theme,
  String? hintText,
  IconData? prefixIcon,
  Widget? suffixIcon,
}) {
  final scheme = theme.colorScheme;
  OutlineInputBorder border(Color color, {double width = 1.4}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppTheme.radiusInput),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  return InputDecoration(
    hintText: hintText,
    prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
    suffixIcon: suffixIcon,
    filled: true,
    fillColor: scheme.surfaceContainerHighest.withValues(alpha: 0.45),
    enabledBorder: border(scheme.outlineVariant),
    focusedBorder: border(scheme.primary, width: 1.8),
    errorBorder: border(scheme.error),
    focusedErrorBorder: border(scheme.error, width: 1.8),
  );
}

/// Inline "Terms of Service and Privacy Policy" text with tappable links.
class AuthTermsText extends StatelessWidget {
  const AuthTermsText({
    super.key,
    required this.prefix,
    required this.andLabel,
    required this.termsLabel,
    required this.privacyLabel,
    required this.onTermsTap,
    required this.onPrivacyTap,
    this.textAlign = TextAlign.start,
  });

  final String prefix;
  final String andLabel;
  final String termsLabel;
  final String privacyLabel;
  final VoidCallback onTermsTap;
  final VoidCallback onPrivacyTap;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final linkStyle = TextStyle(
      color: scheme.primary,
      fontWeight: FontWeight.w700,
    );
    return Text.rich(
      TextSpan(
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: scheme.onSurfaceVariant,
              height: 1.4,
            ),
        children: [
          TextSpan(text: prefix),
          TextSpan(
            text: termsLabel,
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = onTermsTap,
          ),
          TextSpan(text: andLabel),
          TextSpan(
            text: privacyLabel,
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
          ),
        ],
      ),
      textAlign: textAlign,
    );
  }
}

/// Scrollable bottom sheet used to display the Terms and Privacy texts.
void showLegalSheet(
  BuildContext context, {
  required String title,
  required String body,
}) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (ctx) {
      final scheme = Theme.of(ctx).colorScheme;
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.62,
        maxChildSize: 0.92,
        minChildSize: 0.4,
        builder: (context, scrollController) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(ctx),
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Text(
                      body,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: scheme.onSurfaceVariant,
                            height: 1.6,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

/// Primary CTA button with a gradient and soft shadow for a polished look.
class AuthPrimaryButton extends StatelessWidget {
  const AuthPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.loading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      height: 56,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            scheme.primary,
            Color.lerp(scheme.primary, Colors.black, 0.18)!,
          ],
        ),
        borderRadius: BorderRadius.circular(AppTheme.radiusButton),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.32),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        child: loading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
