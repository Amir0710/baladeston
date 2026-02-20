import 'dart:convert';

import 'package:baladeston/core/exception/cache_exception.dart';
import 'package:baladeston/core/exception/date_exception.dart';
import 'package:baladeston/data/theme/model/theme_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme_local.dart';

class ThemeLocalImpl implements ThemeLocal {
  static const String _themeKey = 'app_theme';

  Future<SharedPreferences> get _prefs async =>
      SharedPreferences.getInstance();

  ThemeModel get _defaultLightTheme => ThemeModel(
    id: 0,
    name: 'light',
    isDark: false,
    colors: ThemeColors(
      info: '0xff838383',
      error: '0xffD32F2F',
      divider: '0xffBDBDBD',
      primary: '0xff4E74F9',
      success: '0xff388E3C',
      surface: '0xffF5F5F5',
      warning: '0xffFBC02D',
      secondary: '0xff40BAF0',
      background: '0xffFFFFFF',
      partColors: [
        '0xff01B6CD',
        '0xff5C5BFD',
        '0xffF9D048',
        '0xffE14B5A',
        '0xff409500',
        '0xfffb944b',
      ],
      textPrimary: '0xFF161C2B',
      textSecondary: '0xFFFFFFFF',
      buttonForeground: '0xffFFFFFF',
    ),
  );

  // ------------------------------------------------------
  // Save theme
  // ------------------------------------------------------

  @override
  Future<void> saveThemeModel({
    required ThemeModel theme,
  }) async {
    try {
      final prefs = await _prefs;
      final jsonString = jsonEncode(theme.toJson());
      await prefs.setString(_themeKey, jsonString);
    } catch (error) {
      throw CacheException(
        message: 'Failed to save theme locally',
        cause: error,
      );
    }
  }

  // ------------------------------------------------------
  // Load theme
  // ------------------------------------------------------

  @override
  Future<ThemeModel> loadTheme() async {
    try {
      final prefs = await _prefs;
      final jsonString = prefs.getString(_themeKey);

      if (jsonString == null) {
        return _defaultLightTheme;
      }

      final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
      return ThemeModel.fromJson(jsonMap);
    } catch (error) {
      // Corrupted cache → reset & fallback
      await _clearTheme();
      return _defaultLightTheme;
    }
  }

  // ------------------------------------------------------
  // Helpers
  // ------------------------------------------------------

  Future<void> _clearTheme() async {
    final prefs = await _prefs;
    await prefs.remove(_themeKey);
  }
}
