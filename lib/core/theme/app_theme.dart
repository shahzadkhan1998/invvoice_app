import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// Premium "modern fintech" design system.
///
/// Everything is driven by [AppColors] tokens + a dynamic accent color, so the
/// app re-skins instantly when [AppColors.applyDynamic] is called.
class AppTheme {
  // Spacing / shape tokens shared across the app.
  static const double radiusCard = 20;
  static const double radiusInput = 14;
  static const double radiusButton = 16;

  static ThemeData get lightTheme => _build(Brightness.light);
  static ThemeData get darkTheme => _build(Brightness.dark);

  static ThemeData _build(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    final base = isDark ? AppColors.darkBackground : AppColors.lightBackground;
    final surface =
        isDark ? AppColors.darkSurface : AppColors.lightSurface;
    final surfaceMuted =
        isDark ? AppColors.darkSurfaceMuted : AppColors.lightSurfaceMuted;
    final border = isDark ? AppColors.darkBorder : AppColors.lightBorder;
    final textPrimary =
        isDark ? AppColors.darkTextPrimary : AppColors.lightTextPrimary;
    final textSecondary =
        isDark ? AppColors.darkTextSecondary : AppColors.lightTextSecondary;
    final textMuted =
        isDark ? AppColors.darkTextMuted : AppColors.lightTextMuted;

    final primary = isDark ? AppColors.primaryLight : AppColors.primary;
    final onPrimary = Colors.white;
    final primaryContainer = AppColors.primaryPale;
    final onPrimaryContainer =
        isDark ? AppColors.darkTextPrimary : AppColors.primaryDark;

    final scheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: primary,
      onSecondary: onPrimary,
      secondaryContainer: AppColors.primaryPale,
      onSecondaryContainer: onPrimaryContainer,
      surface: surface,
      onSurface: textPrimary,
      surfaceContainerHighest: surfaceMuted,
      onSurfaceVariant: textSecondary,
      error: isDark ? AppColors.dangerRedDark : AppColors.dangerRed,
      outline: border,
      outlineVariant: border,
      shadow: AppColors.shadowColor,
    );

    final textTheme = GoogleFonts.plusJakartaSansTextTheme(
      ThemeData(brightness: brightness).textTheme.apply(
            bodyColor: textPrimary,
            displayColor: textPrimary,
          ),
    ).copyWith(
      displayLarge: _style(isDark, 34, FontWeight.w800),
      displayMedium: _style(isDark, 28, FontWeight.w700),
      headlineLarge: _style(isDark, 26, FontWeight.w700),
      headlineMedium: _style(isDark, 22, FontWeight.w700),
      headlineSmall: _style(isDark, 20, FontWeight.w700),
      titleLarge: _style(isDark, 18, FontWeight.w700),
      titleMedium: _style(isDark, 16, FontWeight.w600),
      titleSmall: _style(isDark, 14, FontWeight.w600),
      bodyLarge: _style(isDark, 16, FontWeight.w400),
      bodyMedium: _style(isDark, 14, FontWeight.w400),
      bodySmall: _style(isDark, 12, FontWeight.w400),
      labelLarge: _style(isDark, 14, FontWeight.w600),
      labelMedium: _style(isDark, 12, FontWeight.w500),
      labelSmall: _style(isDark, 11, FontWeight.w500),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: base,
      textTheme: textTheme,
      fontFamily: 'Plus Jakarta Sans',
      splashFactory: InkSparkle.splashFactory,
      splashColor: primary.withValues(alpha: 0.06),
      highlightColor: primary.withValues(alpha: 0.04),
      dividerColor: border,
      hintColor: textMuted,

      appBarTheme: AppBarTheme(
        backgroundColor: base,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: textPrimary),
        titleTextStyle: _style(isDark, 18, FontWeight.w700),
      ),

      cardTheme: CardThemeData(
        color: surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusCard),
          side: BorderSide(color: border.withValues(alpha: 0.7)),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          disabledBackgroundColor: primary.withValues(alpha: 0.4),
          disabledForegroundColor: onPrimary.withValues(alpha: 0.7),
          minimumSize: const Size(double.infinity, 56),
          elevation: 0,
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusButton),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          side: BorderSide(color: border, width: 1.4),
          minimumSize: const Size(double.infinity, 56),
          elevation: 0,
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusButton),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceMuted,
        hintStyle: TextStyle(color: textMuted, fontSize: 14),
        prefixIconColor: textMuted,
        suffixIconColor: textMuted,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInput),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInput),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInput),
          borderSide: BorderSide(color: primary, width: 1.6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInput),
          borderSide: BorderSide(color: AppColors.dangerRed),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInput),
          borderSide: BorderSide(color: AppColors.dangerRed, width: 1.6),
        ),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        showDragHandle: true,
        dragHandleColor: isDark ? AppColors.darkBorder : AppColors.lightBorder,
        modalBackgroundColor: surface,
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        titleTextStyle: _style(isDark, 18, FontWeight.w700),
        contentTextStyle: _style(isDark, 14, FontWeight.w400),
      ),

      dividerTheme: DividerThemeData(
        color: border,
        thickness: 1,
        space: 1,
      ),

      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: isDark ? AppColors.darkSurfaceMuted : AppColors.lightTextPrimary,
        contentTextStyle: TextStyle(
          color: isDark ? AppColors.darkTextPrimary : Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        insetPadding: const EdgeInsets.all(16),
        elevation: 6,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: surface,
        selectedItemColor: primary,
        unselectedItemColor: textMuted,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: surface,
        indicatorColor: primary.withValues(alpha: 0.14),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.white;
          return isDark ? AppColors.darkTextMuted : AppColors.gray400;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primary;
          return isDark ? AppColors.darkBorder : AppColors.gray200;
        }),
        trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      ),

      popupMenuTheme: PopupMenuThemeData(
        color: surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        shadowColor: AppColors.shadowColor.withValues(alpha: 0.2),
        textStyle: _style(isDark, 14, FontWeight.w500),
      ),

      tabBarTheme: TabBarThemeData(
        dividerColor: Colors.transparent,
        labelColor: primary,
        unselectedLabelColor: textMuted,
        indicatorSize: TabBarIndicatorSize.tab,
      ),

      listTileTheme: ListTileThemeData(
        iconColor: textSecondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),

      timePickerTheme: TimePickerThemeData(
        backgroundColor: surface,
        dialBackgroundColor: surfaceMuted,
        hourMinuteTextColor: textPrimary,
        dayPeriodTextColor: primary,
        hourMinuteColor: primary,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: surfaceMuted,
        ),
      ),

      datePickerTheme: DatePickerThemeData(
        backgroundColor: surface,
        headerBackgroundColor: primary,
        headerForegroundColor: Colors.white,
        todayBorder: BorderSide(color: primary, width: 1.4),
        todayForegroundColor: WidgetStatePropertyAll(primary),
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
    );
  }

  static TextStyle _style(bool isDark, double size, FontWeight weight) {
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      height: 1.25,
      color: isDark ? AppColors.darkTextPrimary : AppColors.lightTextPrimary,
    );
  }
}
