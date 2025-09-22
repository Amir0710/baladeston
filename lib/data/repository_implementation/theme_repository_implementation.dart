import 'package:baladeston/data/datasources/remote/theme_remote_datasource/theme_api.dart';
import 'package:baladeston/data/mapper/theme_mapper.dart';
import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class ThemeRepositoryImplementation extends ThemeRepository {
  final ThemeApi _api;

  ThemeRepositoryImplementation({required ThemeApi api}) : _api = api;

  @override
  Future<List<ThemeEntity>?> getAllThemes() async {
    try {
      final models = await _api.getAllThemes();
      return models?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<ThemeEntity?> getThemeByName({required String name}) async {
    try {
      final model = await _api.getThemeByName(name: name);
      return model?.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<ThemeEntity?> getThemeById({required int id}) async {
    try {
      final model = await _api.getThemeById(id: id);
      return model?.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<ThemeEntity> createTheme({required ThemeEntity theme}) async {
    try {
      final model = theme.toModel();
      final createdModel = await _api.createTheme(theme: model);
      return createdModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<ThemeEntity> updateTheme({required ThemeEntity theme}) async {
    try {
      final model = theme.toModel();
      final updatedModel = await _api.updateTheme(theme: model);
      return updatedModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteThemeById({required int id}) async {
    try {
      await _api.deleteThemeById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteThemeByName({required String name}) async {
    try {
      await _api.deleteThemeByName(name: name);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<int> countAllThemes() async {
    try {
      return await _api.countAllThemes();
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
