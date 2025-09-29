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
  static late ThemeEntity _entity;

  static late Color infoColor;
  static late Color errorColor;
  static late Color dividerColor;
  static late Color primaryColor;
  static late Color successColor;
  static late Color surfaceColor;
  static late Color warningColor;
  static late Color secondaryColor;
  static late Color backgroundColor;
  static late Color textPrimaryColor;
  static late Color textSecondaryColor;
  static late Color buttonForegroundColor;
  static late List<Color> partColorsList;

  static void init(ThemeEntity entity) {
    _entity = entity;

    infoColor = _parseColor(entity.colors.info);
    errorColor = _parseColor(entity.colors.error);
    dividerColor = _parseColor(entity.colors.divider);
    primaryColor = _parseColor(entity.colors.primary);
    successColor = _parseColor(entity.colors.success);
    surfaceColor = _parseColor(entity.colors.surface);
    warningColor = _parseColor(entity.colors.warning);
    secondaryColor = _parseColor(entity.colors.secondary);
    backgroundColor = _parseColor(entity.colors.background);
    textPrimaryColor = _parseColor(entity.colors.textPrimary);
    textSecondaryColor = _parseColor(entity.colors.textSecondary);
    buttonForegroundColor = _parseColor(entity.colors.buttonForeground);
    partColorsList =
        entity.colors.partColors.map((hex) => _parseColor(hex)).toList();
  }

  static Color _parseColor(String color) => Color(int.parse(color));

  static ThemeData theme() {
    return ThemeData(
      brightness: _entity.isDark ? Brightness.dark : Brightness.light,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 35,
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        displayMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 25,
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        displaySmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 18,
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        headlineLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 26,
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        headlineMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 24,
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        headlineSmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 22,
            color: textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        bodyLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 22,
            color: textPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        bodyMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 20,
            color: textPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        bodySmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 18,
            color: textPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        labelLarge: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 18,
            color: infoColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        labelMedium: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 16,
            color: infoColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        labelSmall: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            height: 1.4,
            fontSize: 14,
            color: infoColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        toolbarHeight: 80,
      ),
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      dividerColor: dividerColor,
      splashColor: secondaryColor.withOpacity(0.1),
      colorScheme: ColorScheme(
        brightness: _entity.isDark ? Brightness.dark : Brightness.light,
        primary: primaryColor,
        onPrimary: buttonForegroundColor,
        secondary: secondaryColor,
        onSecondary: buttonForegroundColor,
        error: primaryColor,
        onError: buttonForegroundColor,
        background: backgroundColor,
        onBackground: textPrimaryColor,
        surface: surfaceColor,
        onSurface: textPrimaryColor,
      ),
      cardColor: surfaceColor,
      hintColor: textSecondaryColor,
      disabledColor: dividerColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(
              Radius.circular(12),
            ),
          ),
          backgroundColor: primaryColor,
          foregroundColor: textSecondaryColor,
          textStyle: GoogleFonts.vazirmatn(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: textSecondaryColor,
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        labelStyle: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            fontSize: 16,
            color: infoColor.withOpacity(0.5),
            fontWeight: FontWeight.w500,
          ),
        ),
        hintStyle: GoogleFonts.vazirmatn(
          textStyle: TextStyle(
            fontSize: 16,
            color: infoColor.withOpacity(0.5),
            fontWeight: FontWeight.w500,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: infoColor.withOpacity(0.1),
            // width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: infoColor.withOpacity(0.1),
            // width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: primaryColor,
            // width: 2.0,
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
