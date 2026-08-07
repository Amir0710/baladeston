import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:flutter/material.dart';

/// ===============================
/// ThemeEntity -> ThemeData Mapper
/// ===============================
extension ThemeEntityToThemeDataMapper on ThemeEntity {
  ThemeData toThemeData() {
    final c = colors;

    return ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,

      // --- Base colors ---
      primaryColor: c.primary.toColor(),
      scaffoldBackgroundColor: c.background.toColor(),
      dividerColor: c.divider.toColor(),

      // --- ColorScheme (Modern Flutter) ---
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: c.primary.toColor(),
        secondary: c.secondary.toColor(),
        surface: c.surface.toColor(),
        background: c.background.toColor(),
        error: c.error.toColor(),
        onPrimary: c.textSecondary.toColor(),
        onSecondary: c.textPrimary.toColor(),
        onSurface: c.textPrimary.toColor(),
        onBackground: c.textPrimary.toColor(),
        onError: c.textSecondary.toColor(),
      ),

      // --- Text Theme ---
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: c.textPrimary.toColor()),
        bodyMedium: TextStyle(color: c.textPrimary.toColor()),
        bodySmall: TextStyle(color: c.info.toColor()),
        titleMedium: TextStyle(color: c.textPrimary.toColor()),
      ),

      // --- AppBar ---
      appBarTheme: AppBarTheme(
        backgroundColor: c.primary.toColor(),
        foregroundColor: c.textSecondary.toColor(),
        elevation: 0,
        centerTitle: true,
      ),

      // --- Buttons ---
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: c.primary.toColor(),
          foregroundColor: c.buttonForeground.toColor(),
        ),
      ),

      // --- Divider ---
      dividerTheme: DividerThemeData(
        color: c.divider.toColor(),
        thickness: 1,
      ),
    );
  }
}

/// ===============================
/// Hex String -> Color Extension
/// ===============================
extension HexColorExtension on String {
  Color toColor() {
    final hex = replaceFirst('#', '');

    if (hex.length == 6) {
      return Color(int.parse('FF$hex', radix: 16));
    } else if (hex.length == 8) {
      return Color(int.parse(hex, radix: 16));
    } else {
      throw FormatException('Invalid hex color: $this');
    }
  }
}
