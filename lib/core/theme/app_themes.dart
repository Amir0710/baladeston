import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyles extends ThemeExtension<CustomTextStyles> {
  final TextStyle success;
  final TextStyle warning;
  final TextStyle primary;

  const CustomTextStyles({
    required this.success,
    required this.warning,
    required this.primary,
  });

  @override
  CustomTextStyles copyWith({
    TextStyle? success,
    TextStyle? warning,
    TextStyle? primary,
  }) {
    return CustomTextStyles(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      primary: primary ?? this.primary,
    );
  }

  @override
  CustomTextStyles lerp(CustomTextStyles? other, double t) {
    if (other == null) return this;
    return CustomTextStyles(
      success: TextStyle.lerp(success, other.success, t)!,
      warning: TextStyle.lerp(warning, other.warning, t)!,
      primary: TextStyle.lerp(primary, other.primary, t)!,
    );
  }
}

class AppTheme {
  final ThemeEntity entity;

  AppTheme({required this.entity});

  Color _parseColor(String color) => Color(int.parse(color));

  ThemeData theme() {
    final primaryTextColor = _parseColor(entity.colors.textPrimary);
    final secondaryTextColor = _parseColor(entity.colors.info);

    final successColor = _parseColor(entity.colors.success);
    final warningColor = _parseColor(entity.colors.warning);
    final primaryColor = _parseColor(entity.colors.primary);

    return ThemeData(
      brightness: entity.isDark ? Brightness.dark : Brightness.light,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 35,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        displayMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 25,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        displaySmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 20,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        headlineLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 26,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        headlineMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 24,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        headlineSmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 22,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        bodyLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 22,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        bodyMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 20,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        bodySmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 18,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        labelLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 18,
            color: secondaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        labelMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 16,
            color: secondaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        labelSmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 14,
            color: secondaryTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        toolbarHeight: 80,

      ),
      primaryColor: _parseColor(entity.colors.primary),
      scaffoldBackgroundColor: _parseColor(entity.colors.background),
      dividerColor: _parseColor(entity.colors.divider),
      splashColor: _parseColor(entity.colors.secondary).withOpacity(0.1),
      colorScheme: ColorScheme(
        brightness: entity.isDark ? Brightness.dark : Brightness.light,
        primary: _parseColor(entity.colors.primary),
        onPrimary: _parseColor(entity.colors.buttonForeground),
        secondary: _parseColor(entity.colors.secondary),
        onSecondary: _parseColor(entity.colors.buttonForeground),
        error: primaryColor,
        onError: _parseColor(entity.colors.buttonForeground),
        background: _parseColor(entity.colors.background),
        onBackground: _parseColor(entity.colors.textPrimary),
        surface: _parseColor(entity.colors.surface),
        onSurface: _parseColor(entity.colors.textPrimary),
      ),
      cardColor: _parseColor(entity.colors.surface),
      hintColor: _parseColor(entity.colors.textSecondary),
      disabledColor: _parseColor(entity.colors.divider),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _parseColor(entity.colors.primary),
          foregroundColor: _parseColor(entity.colors.textSecondary),
          textStyle: GoogleFonts.vazirmatn(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: _parseColor(entity.colors.textSecondary),
            ),
          ),
        ),
      ),
      extensions: [
        CustomTextStyles(
          success: GoogleFonts.vazirmatn(
            textStyle: TextStyle(
              color: successColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          warning: GoogleFonts.vazirmatn(
            textStyle: TextStyle(
              color: warningColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          primary: GoogleFonts.vazirmatn(
            textStyle: TextStyle(
              color: primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
