import 'package:baladeston/domain/filters/theme_query_filter.dart';

import '../entitys/theme/theme_entity.dart';

abstract class ThemeRepository {
  Future<List<ThemeEntity>?> getAllThemes({required ThemeQueryFilter filter});

  Future<ThemeEntity?> getThemeByName({required String name});

  Future<ThemeEntity?> getThemeById({required int id});

  Future<ThemeEntity> createTheme({required ThemeEntity theme});

  Future<ThemeEntity> updateTheme({required ThemeEntity theme});

  Future<void> deleteThemeById({required int id});

  Future<void> deleteThemeByName({required String name});

  Future<int> countAllThemes();

  Future<ThemeEntity?> initTheme();

  Future<void> setTheme({required ThemeEntity theme}) ;
}
