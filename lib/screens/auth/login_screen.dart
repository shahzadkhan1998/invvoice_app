import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/auth_provider.dart';
import '../../core/theme/app_colors.dart';
import 'auth_widgets.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    final auth = context.read<AuthProvider>();
    final success = await auth.signIn(
      email: _emailCtrl.text.trim(),
      password: _passwordCtrl.text,
      context: context,
    );

    if (!mounted) return;
    setState(() => _isLoading = false);

    if (success) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (auth.error != null) {
      _showError(auth.error!);
    }
  }

  Future<void> _signInWithGoogle() async {
    setState(() => _isLoading = true);
    final auth = context.read<AuthProvider>();
    final success = await auth.signInWithGoogle(context: context);

    if (!mounted) return;
    setState(() => _isLoading = false);

    if (success) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (auth.error != null) {
      _showError(auth.error!);
    }
  }

  void _showError(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: AppColors.dangerRed,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          _decorativeBackdrop(colorScheme),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),

                    // Header
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            colorScheme.primary,
                            Color.lerp(
                                colorScheme.primary, Colors.black, 0.16)!,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.primary.withValues(alpha: 0.35),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.receipt_long_rounded,
                        color: colorScheme.onPrimary,
                        size: 36,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      l10n.loginHeading,
                      style: textTheme.headlineSmall?.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.loginSubtitle,
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 15,
                        color:
                            textTheme.bodyMedium?.color?.withValues(alpha: 0.6),
                      ),
                    ),
                    const SizedBox(height: 36),

                    // Email field
                    _buildLabel(l10n.loginEmailLabel),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: authInputDecoration(
                        theme: theme,
                        hintText: l10n.loginEmailHint,
                        prefixIcon: Icons.email_outlined,
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return l10n.loginEmailRequired;
                        }
                        if (!v.contains('@')) return l10n.loginEmailInvalid;
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    // Password field
                    _buildLabel(l10n.loginPasswordLabel),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordCtrl,
                      obscureText: _obscurePassword,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => _signIn(),
                      decoration: authInputDecoration(
                        theme: theme,
                        hintText: l10n.loginPasswordHint,
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                          onPressed: () => setState(
                              () => _obscurePassword = !_obscurePassword),
                        ),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return l10n.loginPasswordRequired;
                        }
                        if (v.length < 6) {
                          return l10n.loginPasswordMinLength;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 4),

                    // Forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => _showForgotPassword(context),
                        child: Text(
                          l10n.loginForgotPassword,
                          style: TextStyle(color: colorScheme.primary),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Terms & privacy
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: AuthTermsText(
                        prefix: l10n.loginAgreePrefix,
                        termsLabel: l10n.authTermsOfService,
                        andLabel: l10n.authAgreeAnd,
                        privacyLabel: l10n.authPrivacyPolicy,
                        textAlign: TextAlign.center,
                        onTermsTap: () => showLegalSheet(
                          context,
                          title: l10n.authTermsOfService,
                          body: l10n.authTermsSheet,
                        ),
                        onPrivacyTap: () => showLegalSheet(
                          context,
                          title: l10n.authPrivacyPolicy,
                          body: l10n.authPrivacySheet,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Sign In button
                    AuthPrimaryButton(
                      label: l10n.loginSignIn,
                      loading: _isLoading,
                      onPressed: _isLoading ? null : _signIn,
                    ),
                    const SizedBox(height: 20),

                    // Divider
                    Row(
                      children: [
                        Expanded(child: Divider(color: theme.dividerColor)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            l10n.loginOrContinueWith,
                            style: textTheme.bodySmall?.copyWith(fontSize: 13),
                          ),
                        ),
                        Expanded(child: Divider(color: theme.dividerColor)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Google Sign In
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: OutlinedButton.icon(
                        onPressed: _isLoading ? null : _signInWithGoogle,
                        icon: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(Icons.g_mobiledata,
                              color: Colors.white, size: 18),
                        ),
                        label: Text(
                          l10n.loginContinueWithGoogle,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),

                    // Register link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          l10n.loginNoAccount,
                          style: TextStyle(
                              color: textTheme.bodyMedium?.color
                                  ?.withValues(alpha: 0.6)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const RegisterScreen()),
                            );
                          },
                          child: Text(
                            l10n.loginSignUp,
                            style: TextStyle(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Soft gradient "glow" blobs to give the screen a modern fintech feel.
  Widget _decorativeBackdrop(ColorScheme scheme) {
    return Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: [
            Positioned(
              top: -120,
              right: -100,
              child: Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      scheme.primary.withValues(alpha: 0.18),
                      scheme.primary.withValues(alpha: 0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: -140,
              child: Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      scheme.primary.withValues(alpha: 0.10),
                      scheme.primary.withValues(alpha: 0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.color
            ?.withValues(alpha: 0.7),
      ),
    );
  }

  void _showForgotPassword(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final emailCtrl = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: theme.dialogBackgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(l10n.loginResetPasswordTitle,
            style: theme.textTheme.titleLarge),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.loginResetPasswordMessage,
                style: theme.textTheme.bodyMedium),
            const SizedBox(height: 16),
            TextField(
              controller: emailCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: l10n.loginResetPasswordHint,
                prefixIcon: Icon(Icons.email_outlined,
                    color: theme.textTheme.bodySmall?.color),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.commonCancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(100, 44)),
            onPressed: () async {
              if (emailCtrl.text.isNotEmpty) {
                final auth = context.read<AuthProvider>();
                final ok =
                    await auth.resetPassword(emailCtrl.text.trim(), context);
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(ok
                        ? l10n.loginResetLinkSent
                        : auth.error ?? l10n.loginResetLinkFailed),
                    backgroundColor:
                        ok ? AppColors.successGreen : AppColors.dangerRed,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            child: Text(l10n.commonSendLink),
          ),
        ],
      ),
    );
  }
}
