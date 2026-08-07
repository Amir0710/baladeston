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

  Future<List<ThemeModel>> getThemeByName({
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

  Future<List<ThemeModel>> updateThemeByFilter({
    required ThemeQueryFilter filter,
    required ThemeModel theme,
  });

  // ------------------------------------------------------
  // Delete
  // ------------------------------------------------------

  Future<int> deleteThemeById({
    required int id,
  });

  Future<List<int>> deleteThemeByFilter({
    required ThemeQueryFilter filter,
  });

  // ------------------------------------------------------
  // Count
  // ------------------------------------------------------

  Future<int> countAllThemes({
    required ThemeQueryFilter filter,
  });
}
