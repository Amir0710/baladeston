import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/datasource/remote/favorite_remote_datasource/favorite_api.dart';
import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/data/favorite/mapper/favorite_mapper.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure_mapper.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';

class FavoriteRepositoryImplementation extends FavoriteRepository {
  final FavoriteApi _api;

  FavoriteRepositoryImplementation({required FavoriteApi api}) : _api = api;

  // --------------------------------------------------
  // Create
  // --------------------------------------------------

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> createFavorite({
    required FavoriteEntity favorite,
  }) async {
    try {
      final model = favorite.toModel();
      final resultModel = await _api.createFavorite(favorite: model);
      return Result.success(resultModel.toEntity());
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }

  // --------------------------------------------------
  // Update
  // --------------------------------------------------

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> updateFavoriteById({
    required int id,
    required FavoriteEntity favorite,
  }) async {
    try {
      final model = favorite.toModel();
      final updatedModel =
      await _api.updateFavoriteById(id: id, favorite: model);
      return Result.success(updatedModel.toEntity());
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteEntity favorite,
  }) async {
    try {
      final model = favorite.toModel();
      final updatedModel = await _api.updateFavoriteByFilter(
        filter: filter,
        favorite: model,
      );
      return Result.success(updatedModel.toEntity());
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }

  // --------------------------------------------------
  // Read
  // --------------------------------------------------

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> getFavoriteById({
    required int id,
  }) async {
    try {
      final model = await _api.getFavoriteById(id: id);
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }

  @override
  Future<Result<List<FavoriteEntity>, FavoriteFailure>> getFavoriteByFilter({
    required FavoriteQueryFilter filter,
  }) async {
    try {
      final models = await _api.getFavoriteByFilter(filter: filter);
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }

  // --------------------------------------------------
  // Delete
  // --------------------------------------------------

  @override
  Future<Result<int, FavoriteFailure>> deleteFavoriteById({
    required int id,
  }) async {
    try {
      final deletedId = await _api.deleteFavoriteById(id: id);
      return Result.success(deletedId);
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }

  @override
  Future<Result<List<int>, FavoriteFailure>> deleteFavoriteByFilter({
    required FavoriteQueryFilter filter,
  }) async {
    try {
      final ids = await _api.deleteFavoriteByFilter(filter: filter);
      return Result.success(ids);
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }

  // --------------------------------------------------
  // Count
  // --------------------------------------------------

  @override
  Future<Result<int, FavoriteFailure>> countFavorite({
    required FavoriteQueryFilter filter,
  }) async {
    try {
      final count = await _api.countFavorite(filter: filter);
      return Result.success(count);
    } catch (error) {
      return Result.failure(mapFavoriteException(error));
    }
  }
}
