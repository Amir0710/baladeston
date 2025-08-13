import 'package:baladeston/data/datasources/remote/favorite_remote_datasource/favorite_api.dart';
import 'package:baladeston/data/mapper/favorite_mapper.dart';
import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImplementation extends FavoriteRepository {
  final FavoriteApi _api;

  FavoriteRepositoryImplementation({required FavoriteApi api}) : _api = api;

  @override
  Future<FavoriteEntity> createFavorite(
      {required FavoriteEntity favorite}) async {
    try {
      final model = favorite.toModel();
      final resultModel = await _api.createFavorite(favorite: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteFavoriteByFilter(
      {required FavoriteQueryFilter filter}) async {
    try {
      await _api.deleteFavoriteByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteFavoriteById({required int id}) async {
    try {
      await _api.deleteFavoriteById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<FavoriteEntity>?> getFavoriteByFilter(
      {required FavoriteQueryFilter filter}) async {
    try {
      final resultModel = await _api.getFavoriteByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<FavoriteEntity?> getFavoriteById({required int id}) async {
    try {
      final resultModel = await _api.getFavoriteById(id: id);
      return resultModel?.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<FavoriteEntity> updateFavorite(
      {required FavoriteEntity favorite}) async {
    try {
      final model = favorite.toModel();
      final resultModel = await _api.updateFavorite(favorite: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<int> countFavorite({required FavoriteQueryFilter filter}) {
    try {
      return _api.countFavorite(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
