import 'package:baladeston/data/models/theme/theme_model.dart';

abstract class ThemeApi {
  Future<List<ThemeModel>?> getAllThemes();

  Future<ThemeModel?> getThemeByName({required String name});

  Future<ThemeModel?> getThemeById({required int id});

  Future<ThemeModel> createTheme({required ThemeModel theme});

  Future<ThemeModel> updateTheme({required ThemeModel theme});

  Future<void> deleteThemeById({required int id});

  Future<void> deleteThemeByName({required String name});

  Future<int> countAllThemes();

}
