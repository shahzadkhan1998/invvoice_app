import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../providers/auth_provider.dart';
import '../../core/theme/app_colors.dart';
import 'auth_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirm = true;
  bool _isLoading = false;
  bool _agreeTerms = false;
  bool _showTermsError = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (!_agreeTerms) {
      setState(() => _showTermsError = true);
      return;
    }
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    final auth = context.read<AuthProvider>();
    final success = await auth.signUp(
      name: _nameCtrl.text.trim(),
      email: _emailCtrl.text.trim(),
      password: _passwordCtrl.text,
      context: context,
    );

    if (!mounted) return;
    setState(() => _isLoading = false);

    if (success) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (auth.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(auth.error!),
          backgroundColor: AppColors.dangerRed,
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textTheme.bodyLarge?.color),
          onPressed: () => Navigator.pop(context),
        ),
      ),
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
                    Text(
                      l10n.registerHeading,
                      style: textTheme.headlineSmall?.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.registerSubtitle,
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 15,
                        color:
                            textTheme.bodyMedium?.color?.withValues(alpha: 0.6),
                      ),
                    ),
                    const SizedBox(height: 36),
                    _label(l10n.registerNameLabel),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _nameCtrl,
                      textInputAction: TextInputAction.next,
                      decoration: authInputDecoration(
                        theme: theme,
                        hintText: l10n.registerNameHint,
                        prefixIcon: Icons.person_outline,
                      ),
                      validator: (v) {
                        if (v == null || v.trim().isEmpty) {
                          return l10n.registerNameRequired;
                        }
                        if (v.trim().length < 2) {
                          return l10n.registerNameMinLength;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    _label(l10n.registerEmailLabel),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: authInputDecoration(
                        theme: theme,
                        hintText: l10n.registerEmailHint,
                        prefixIcon: Icons.email_outlined,
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return l10n.registerEmailRequired;
                        }
                        if (!v.contains('@')) return l10n.registerEmailInvalid;
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    _label(l10n.registerPasswordLabel),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordCtrl,
                      obscureText: _obscurePassword,
                      textInputAction: TextInputAction.next,
                      decoration: authInputDecoration(
                        theme: theme,
                        hintText: l10n.registerPasswordHint,
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
                          return l10n.registerPasswordRequired;
                        }
                        if (v.length < 6) {
                          return l10n.registerPasswordMinLength;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    _label(l10n.registerConfirmPasswordLabel),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _confirmCtrl,
                      obscureText: _obscureConfirm,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => _register(),
                      decoration: authInputDecoration(
                        theme: theme,
                        hintText: l10n.registerConfirmPasswordHint,
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirm
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                          onPressed: () => setState(
                              () => _obscureConfirm = !_obscureConfirm),
                        ),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return l10n.registerConfirmPasswordRequired;
                        }
                        if (v != _passwordCtrl.text) {
                          return l10n.registerPasswordsDoNotMatch;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),

                    // Terms & privacy agreement
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 28,
                          height: 28,
                          child: Checkbox(
                            value: _agreeTerms,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            onChanged: (v) => setState(() {
                              _agreeTerms = v ?? false;
                              _showTermsError = false;
                            }),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: AuthTermsText(
                              prefix: l10n.registerAgreePrefix,
                              termsLabel: l10n.authTermsOfService,
                              andLabel: l10n.authAgreeAnd,
                              privacyLabel: l10n.authPrivacyPolicy,
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
                        ),
                      ],
                    ),
                    if (_showTermsError) ...[
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 36),
                        child: Text(
                          l10n.authAgreeRequired,
                          style: TextStyle(
                            color: colorScheme.error,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: 28),
                    AuthPrimaryButton(
                      label: l10n.registerCreateAccount,
                      loading: _isLoading,
                      onPressed: _isLoading ? null : _register,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(l10n.registerHaveAccount,
                            style: TextStyle(
                                color: textTheme.bodyMedium?.color
                                    ?.withValues(alpha: 0.6))),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Text(
                            l10n.registerSignIn,
                            style: TextStyle(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
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
              top: 200,
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

  Widget _label(String text) => Text(
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
