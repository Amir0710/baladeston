import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/datasource/remote/favorite_remote_datasource/favorite_api.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/data/favorite/mapper/favorite/favorite_mapper.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';

class FavoriteRepositoryImplementation extends FavoriteRepository {
  final FavoriteApi _api;

  FavoriteRepositoryImplementation({required FavoriteApi api}) : _api = api;

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> createFavorite({
    required FavoriteEntity favorite,
  }) async {
    final model = favorite.toModel();
    final result = await _api.createFavorite(favorite: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> updateFavoriteById({
    required int id,
    required FavoriteEntity favorite,
  }) async {
    final model = favorite.toModel();
    final result = await _api.updateFavoriteById(id: id, favorite: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteEntity favorite,
  }) async {
    final model = favorite.toModel();
    final result = await _api.updateFavoriteByFilter(
      filter: filter,
      favorite: model,
    );

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<FavoriteEntity, FavoriteFailure>> getFavoriteById({
    required int id,
  }) async {
    final result = await _api.getFavoriteById(id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<FavoriteEntity>, FavoriteFailure>> getFavoriteByFilter({
    required FavoriteQueryFilter filter,
  }) async {
    final result = await _api.getFavoriteByFilter(filter: filter);

    return result.map(
      success: (s) => Result.success(s.data.map((e) => e.toEntity()).toList()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, FavoriteFailure>> deleteFavoriteById({
    required int id,
  }) async {
    final result = await _api.deleteFavoriteById(id: id);

    return result.map(
      success: (s) => Result.success(s.data),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<int>, FavoriteFailure>> deleteFavoriteByFilter({
    required FavoriteQueryFilter filter,
  }) async {
    final result = await _api.deleteFavoriteByFilter(filter: filter);

    return result.map(
      success: (s) => Result.success(s.data),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, FavoriteFailure>> countFavorite({
    required FavoriteQueryFilter filter,
  }) async {
    final result = await _api.countFavorite(filter: filter);

    return result.map(
      success: (s) => Result.success(s.data),
      failure: (f) => Result.failure(f.failure),
    );
  }
}
