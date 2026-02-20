import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/data/theme/model/theme_model.dart';

abstract class ThemeApi {
  // ------------------------------------------------------
  // Get
  // ------------------------------------------------------

  Future<List<ThemeModel>> getAllThemes({
    required ThemeQueryFilter filter,
  });

  Future<ThemeModel> getThemeById({
    required int id,
  });

  Future<ThemeModel> getThemeByName({
    required String name,
  });

  // ------------------------------------------------------
  // Create
  // ------------------------------------------------------

  Future<ThemeModel> createTheme({
    required ThemeModel theme,
  });

  // ------------------------------------------------------
  // Update
  // ------------------------------------------------------

  Future<ThemeModel> updateThemeById({
    required int id,
    required ThemeModel theme,
  });

  Future<ThemeModel> updateThemeByFilter({
    required ThemeQueryFilter filter,
    required ThemeModel theme,
  });

  // ------------------------------------------------------
  // Delete
  // ------------------------------------------------------

  Future<int> deleteThemeById({
    required int id,
  });

  Future<int> deleteThemeByName({
    required String name,
  });

  // ------------------------------------------------------
  // Count
  // ------------------------------------------------------

  Future<int> countAllThemes({
    required ThemeQueryFilter filter,
  });
}
