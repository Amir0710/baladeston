import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: GoogleFonts.aBeeZeeTextTheme()
          .apply(
            bodyColor: AppColors.textPrimaryLight,
            displayColor: AppColors.textPrimaryLight,
          )
          .copyWith(
            bodyMedium: TextStyle(
              fontSize: 16,
              color: AppColors.textSecondaryLight,
            ),
        bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.textPrimaryLight,
      ),
        labelLarge:
          TextStyle(
            fontSize: 16 ,
            fontWeight: FontWeight.w500,
            color: AppColors.buttonForegroundLight
          ),
          ),
      primaryColor: AppColors.primaryLight,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      dividerColor: AppColors.dividerLight,
      splashColor: AppColors.secondaryLight.withOpacity(0.1),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryLight,
        onPrimary: Colors.white,
        secondary: AppColors.secondaryLight,
        onSecondary: Colors.white,
        error: AppColors.errorLight,
        onError: Colors.white,
        background: AppColors.backgroundLight,
        onBackground: AppColors.textPrimaryLight,
        surface: AppColors.surfaceLight,
        onSurface: AppColors.textPrimaryLight,
      ),
      cardColor: AppColors.surfaceLight,
      hintColor: AppColors.textSecondaryLight,
      disabledColor: AppColors.dividerLight,
      elevatedButtonTheme: _elevatedButtonTheme(
        AppColors.primaryLight,
        AppColors.buttonForegroundLight,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      textTheme: GoogleFonts.aBeeZeeTextTheme().apply(
        bodyColor: AppColors.textPrimaryDark,
        displayColor: AppColors.textPrimaryDark,
      ),
      primaryColor: AppColors.primaryDark,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      dividerColor: AppColors.dividerDark,
      splashColor: AppColors.secondaryDark.withOpacity(0.1),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primaryDark,
        onPrimary: Colors.black,
        secondary: AppColors.secondaryDark,
        onSecondary: Colors.black,
        error: AppColors.errorDark,
        onError: Colors.black,
        background: AppColors.backgroundDark,
        onBackground: AppColors.textPrimaryDark,
        surface: AppColors.surfaceDark,
        onSurface: AppColors.textPrimaryDark,
      ),
      cardColor: AppColors.surfaceDark,
      hintColor: AppColors.textSecondaryDark,
      disabledColor: AppColors.dividerDark,
      elevatedButtonTheme: _elevatedButtonTheme(
        AppColors.primaryDark,
        AppColors.buttonForegroundDark,
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(
    Color background,
    Color textColor,
  ) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(background),
        foregroundColor: MaterialStateProperty.all(textColor),
        textStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 16),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),
    );
  }
}
