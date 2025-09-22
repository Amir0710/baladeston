import 'dart:convert';

import 'package:baladeston/data/models/theme/theme_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme_local.dart';

class ThemeLocalImpl implements ThemeLocal {
  static const String _themeKey = 'app_theme';

  Future<SharedPreferences> get _prefs async =>
      SharedPreferences.getInstance();

  ThemeModel get _defaultLightTheme => ThemeModel(
    id: 0,
    name: "light",
    isDark: false,
    colors: ThemeColors(
      info: "#0288D1",
      error: "#D32F2F",
      divider: "#BDBDBD",
      primary: "#4E7411",
      success: "#388E3C",
      surface: "#F5F5F5",
      warning: "#FBC02D",
      secondary: "#40BAF0",
      background: "#FFFFFF",
      partColors: [
        "#5C5BFD",
        "#5C5BFD",
        "#5C5BFD",
        "#5C5BFD",
        "#5C5BFD",
        "#5C5BFD",
        "#5C5BFD",
        "#FFD037",
        "#2CB4EC",
        "#E1485A",
        "#5D9B33",
        "#01B6CD",
        "#A1887F",
        "#40B6AC",
        "#7986CB",
        "#DCE775",
      ],
      textPrimary: "#212121",
      textSecondary: "#757575",
      buttonForeground: "#FFFFFF",
    ),
  );

  @override
  Future<void> saveThemeModel({required ThemeModel theme}) async {
    try {
      final prefs = await _prefs;
      final jsonString = jsonEncode(theme.toJson());
      await prefs.setString(_themeKey, jsonString);
    } catch (e, stack) {
      _logError('Error saving theme', e, stack);
    }
  }

  @override
  Future<ThemeModel?> loadTheme() async {
    final jsonMap = await _readThemeJson();

    if (jsonMap == null) {
      // fallback → برگردوندن تم پیش‌فرض
      return _defaultLightTheme;
    }

    try {
      return ThemeModel.fromJson(jsonMap);
    } catch (e, stack) {
      _logError('Error parsing saved theme', e, stack);
      await _removeThemeKey();
      return _defaultLightTheme;
    }
  }

  @override
  Future<bool?> isDarkThemeSaved() async {
    final jsonMap = await _readThemeJson();
    if (jsonMap == null) return _defaultLightTheme.isDark;

    try {
      return ThemeModel.fromJson(jsonMap).isDark;
    } catch (e, stack) {
      _logError('Error parsing theme for isDark check', e, stack);
      return _defaultLightTheme.isDark;
    }
  }

  Future<Map<String, dynamic>?> _readThemeJson() async {
    try {
      final prefs = await _prefs;
      final jsonString = prefs.getString(_themeKey);
      if (jsonString == null) return null;
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e, stack) {
      _logError('Error reading theme JSON from prefs', e, stack);
      return null;
    }
  }

  Future<void> _removeThemeKey() async {
    try {
      final prefs = await _prefs;
      await prefs.remove(_themeKey);
    } catch (e, stack) {
      _logError('Error removing theme key', e, stack);
    }
  }

  void _logError(String message, Object error, StackTrace stack) {
    print('$message: $error\n$stack');
  }
}
