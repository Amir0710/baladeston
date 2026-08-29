import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/data/favorite/model/favorite_model.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

abstract class FavoriteApi {
  // Create
  Future<Result<FavoriteModel, FavoriteFailure>> createFavorite({
    required FavoriteModel favorite,
  });

  // Update
  Future<Result<FavoriteModel, FavoriteFailure>> updateFavoriteById({
    required int id,
    required FavoriteModel favorite,
  });

  Future<Result<int, FavoriteFailure>> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteModel favorite,
  });

  // Read
  Future<Result<FavoriteModel, FavoriteFailure>> getFavoriteById({
    required int id,
  });

  Future<Result<PaginatedResponseModel<FavoriteModel>, FavoriteFailure>>
      getFavoriteByFilter({
    required FavoriteQueryFilter filter,
  });

  // Delete
  Future<Result<int, FavoriteFailure>> deleteFavoriteById({
    required int id,
  });

  Future<Result<int, FavoriteFailure>> deleteFavoriteByFilter({
    required FavoriteQueryFilter filter,
  });

  // Count
  Future<Result<int, FavoriteFailure>> countFavorite({
    required FavoriteQueryFilter filter,
  });
}
