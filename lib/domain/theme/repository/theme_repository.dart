import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';

abstract class ThemeRepository {
  /// Get all themes by filter
  Future<Result<List<ThemeEntity>, ThemeFailure>> getAllThemes({
    required ThemeQueryFilter filter,
  });

  /// Get theme by id
  Future<Result<ThemeEntity, ThemeFailure>> getThemeById({
    required int id,
  });

  /// Get theme by name
  Future<Result<List<ThemeEntity>, ThemeFailure>> getThemeByName({
    required String name,
  });

  /// Create new theme
  Future<Result<ThemeEntity, ThemeFailure>> createTheme({
    required ThemeEntity theme,
  });

  /// Update theme by id
  Future<Result<ThemeEntity, ThemeFailure>> updateThemeById({
    required int id,
    required ThemeEntity theme,
  });

  /// Update theme by filter
  Future<Result<List<ThemeEntity>, ThemeFailure>> updateThemeByFilter({
    required ThemeQueryFilter filter,
    required ThemeEntity theme,
  });

  /// Delete theme by id
  Future<Result<int, ThemeFailure>> deleteThemeById({
    required int id,
  });

  /// Delete theme by name
  Future<Result<List<int>, ThemeFailure>> deleteThemeByFilter({
    required ThemeQueryFilter filter,
  });

  /// Count all themes by filter
  Future<Result<int, ThemeFailure>> countAllThemes({
    required ThemeQueryFilter filter,
  });

  /// Initialize default theme
  Future<Result<ThemeEntity, ThemeFailure>> initTheme();

  /// Set active theme
  Future<Result<ThemeEntity, ThemeFailure>> setTheme({
    required int id,
  });
}
