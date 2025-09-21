import 'package:baladeston/data/models/theme/theme_model.dart';

abstract class ThemeLocal {
  Future<void> saveThemeModel({required ThemeModel theme});
  Future<ThemeModel?> loadTheme();
  Future<bool?> isDarkThemeSaved();
}
