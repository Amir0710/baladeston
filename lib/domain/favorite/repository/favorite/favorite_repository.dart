import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

abstract class FavoriteRepository {
  // Create favorite
  Future<Result<FavoriteEntity, FavoriteFailure>> createFavorite({
    required FavoriteEntity favorite,
  });

  // Update favorite by id
  Future<Result<FavoriteEntity, FavoriteFailure>> updateFavoriteById({
    required int id,
    required FavoriteEntity favorite,
  });

  // Update favorite by filter
  Future<Result<FavoriteEntity, FavoriteFailure>> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteEntity favorite,
  });

  // Get favorite by id
  Future<Result<FavoriteEntity, FavoriteFailure>> getFavoriteById({
    required int id,
  });

  // Get favorites by filter
  Future<Result<List<FavoriteEntity>, FavoriteFailure>> getFavoriteByFilter({
    required FavoriteQueryFilter filter,
  });

  // Delete favorite by id
  Future<Result<int, FavoriteFailure>> deleteFavoriteById({
    required int id,
  });

  // Delete favorite by filter (bulk)
  Future<Result<List<int>, FavoriteFailure>> deleteFavoriteByFilter({
    required FavoriteQueryFilter filter,
  });

  // Count favorites by filter
  Future<Result<int, FavoriteFailure>> countFavorite({
    required FavoriteQueryFilter filter,
  });
}
