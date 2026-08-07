import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/theme/datasource/local/theme_local_datasource/theme_local.dart';
import 'package:baladeston/data/theme/datasource/remote/theme_remote_datasource/theme_api.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/data/theme/mapper/theme_mapper.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/failure/theme_failure_mapper.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

class ThemeRepositoryImplementation implements ThemeRepository {
  final ThemeApi _api;
  final ThemeLocal _local;

  const ThemeRepositoryImplementation({
    required ThemeApi api,
    required ThemeLocal local,
  })  : _api = api,
        _local = local;

  // ------------------------------------------------------
  // Get all themes
  // ------------------------------------------------------

  @override
  Future<Result<List<ThemeEntity>, ThemeFailure>> getAllThemes({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final models = await _api.getAllThemes(filter: filter);
      return Result.success(
        models.map((m) => m.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Get theme by id
  // ------------------------------------------------------

  @override
  Future<Result<ThemeEntity, ThemeFailure>> getThemeById({
    required int id,
  }) async {
    try {
      final model = await _api.getThemeById(id: id);
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Get theme by name
  // ------------------------------------------------------

  @override
  Future<Result<List<ThemeEntity>, ThemeFailure>> getThemeByName({
    required String name,
  }) async {
    try {
      final model = await _api.getThemeByName(name: name);
      return Result.success(model.map((theme) => theme.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Create theme
  // ------------------------------------------------------

  @override
  Future<Result<ThemeEntity, ThemeFailure>> createTheme({
    required ThemeEntity theme,
  }) async {
    try {
      final model = theme.toModel();
      final createdModel = await _api.createTheme(theme: model);
      return Result.success(createdModel.toEntity());
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Update theme by id
  // ------------------------------------------------------

  @override
  Future<Result<ThemeEntity, ThemeFailure>> updateThemeById({
    required int id,
    required ThemeEntity theme,
  }) async {
    try {
      final model = theme.toModel();
      final updatedModel = await _api.updateThemeById(
        id: id,
        theme: model,
      );
      return Result.success(updatedModel.toEntity());
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Update theme by filter
  // ------------------------------------------------------

  @override
  Future<Result<List<ThemeEntity>, ThemeFailure>> updateThemeByFilter({
    required ThemeQueryFilter filter,
    required ThemeEntity theme,
  }) async {
    try {
      final model = theme.toModel();
      final updatedModel = await _api.updateThemeByFilter(
        filter: filter,
        theme: model,
      );
      return Result.success(updatedModel.map((theme) => theme.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Delete theme by id
  // ------------------------------------------------------

  @override
  Future<Result<int, ThemeFailure>> deleteThemeById({
    required int id,
  }) async {
    try {
      final deletedId = await _api.deleteThemeById(id: id);
      return Result.success(deletedId);
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Delete theme by name
  // ------------------------------------------------------

  @override
  Future<Result<List<int>, ThemeFailure>> deleteThemeByFilter({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final deletedId = await _api.deleteThemeByFilter(filter: filter);
      return Result.success(deletedId);
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Count themes
  // ------------------------------------------------------

  @override
  Future<Result<int, ThemeFailure>> countAllThemes({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final count = await _api.countAllThemes(filter: filter);
      return Result.success(count);
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Init theme (Local first)
  // ------------------------------------------------------

  @override
  Future<Result<ThemeEntity, ThemeFailure>> initTheme() async {
    try {
      final model = await _local.loadTheme();
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }

  // ------------------------------------------------------
  // Set active theme
  // ------------------------------------------------------

  @override
  Future<Result<ThemeEntity, ThemeFailure>> setTheme({
    required int id,
  }) async {
    try {
      final model = await _api.getThemeById(id: id);
      await _local.saveThemeModel(theme: model);
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapThemeException(error));
    }
  }
}
