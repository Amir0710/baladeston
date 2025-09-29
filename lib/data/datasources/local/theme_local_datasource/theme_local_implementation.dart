import 'dart:convert';
import 'dart:ui';

import 'package:baladeston/data/models/theme/theme_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme_local.dart';

class ThemeLocalImpl implements ThemeLocal {
  static const String _themeKey = 'app_theme';

  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  Color c = Color(0xff838383);

  ThemeModel get _defaultLightTheme => ThemeModel(
        id: 0,
        name: "light",
        isDark: false,
        colors: ThemeColors(
          info: "0xff838383",
          error: "0xffD32F2F",
          divider: "0xffBDBDBD",
          primary: "0xff4E74F9",
          success: "0xff388E3C",
          surface: "0xffF5F5F5",
          warning: "0xffFBC02D",
          secondary: "0xff40BAF0",
          background: "0xffFFFFFF",
          partColors: [
            "0xff01B6CD",
            "0xff5C5BFD",
            "0xffF9D048",
            "0xffE14B5A",
            "0xff409500",
            "0xfffb944b"
          ],
          textPrimary: "0xFF161C2B",
          textSecondary: "0xFFFFFFFF",
          buttonForeground: "0xffFFFFFF",
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
