import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:invoice_app/l10n/app_localizations.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/theme_provider.dart';
import '../home/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _page = 0;

  final List<_Slide> _slides = const [
    _Slide(
      animation: 'assets/animations/onboarding_welcome.json',
      titleKey: 'onboardingWelcomeTitle',
      bodyKey: 'onboardingWelcomeBody',
    ),
    _Slide(
      animation: 'assets/animations/onboarding_sync.json',
      titleKey: 'onboardingSyncTitle',
      bodyKey: 'onboardingSyncBody',
    ),
    _Slide(
      animation: 'assets/animations/onboarding_pro.json',
      titleKey: 'onboardingProTitle',
      bodyKey: 'onboardingProBody',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _finish() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_done', true);
    if (!mounted) return;
    // Onboarding may be shown as the app's home route (nothing to pop),
    // so replace the current route with HomeScreen to guarantee navigation.
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = context.watch<ThemeProvider>().themeMode == ThemeMode.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.darkBackground : Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: _finish,
                child: Text(l10n.onboardingSkip,
                    style: const TextStyle(color: AppColors.gray500)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _slides.length,
                onPageChanged: (i) => setState(() => _page = i),
                itemBuilder: (context, i) {
                  final slide = _slides[i];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(slide.animation, height: 220),
                        const SizedBox(height: 32),
                        Text(
                          _localized(l10n, slide.titleKey),
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _localized(l10n, slide.bodyKey),
                          style: const TextStyle(
                              fontSize: 15, color: AppColors.gray500),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _slides.length,
                (i) => AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: _page == i ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _page == i
                        ? AppColors.primaryBlue
                        : AppColors.gray200,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    if (_page < _slides.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      _finish();
                    }
                  },
                  child: Text(
                    _page < _slides.length - 1
                        ? l10n.onboardingNext
                        : l10n.onboardingGetStarted,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  String _localized(AppLocalizations l10n, String key) {
    switch (key) {
      case 'onboardingWelcomeTitle':
        return l10n.onboardingWelcomeTitle;
      case 'onboardingWelcomeBody':
        return l10n.onboardingWelcomeBody;
      case 'onboardingSyncTitle':
        return l10n.onboardingSyncTitle;
      case 'onboardingSyncBody':
        return l10n.onboardingSyncBody;
      case 'onboardingProTitle':
        return l10n.onboardingProTitle;
      case 'onboardingProBody':
        return l10n.onboardingProBody;
      default:
        return '';
    }
  }
}

class _Slide {
  final String animation;
  final String titleKey;
  final String bodyKey;
  const _Slide({
    required this.animation,
    required this.titleKey,
    required this.bodyKey,
  });
}
