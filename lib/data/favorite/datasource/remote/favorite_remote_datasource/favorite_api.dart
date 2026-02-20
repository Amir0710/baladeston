import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/data/favorite/model/favorite_model.dart';

abstract class FavoriteApi {
  // Create
  Future<FavoriteModel> createFavorite({
    required FavoriteModel favorite,
  });

  // Update
  Future<FavoriteModel> updateFavoriteById({
    required int id,
    required FavoriteModel favorite,
  });

  Future<FavoriteModel> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteModel favorite,
  });

  // Read
  Future<FavoriteModel> getFavoriteById({
    required int id,
  });

  Future<List<FavoriteModel>> getFavoriteByFilter({
    required FavoriteQueryFilter filter,
  });

  // Delete
  Future<int> deleteFavoriteById({
    required int id,
  });

  Future<List<int>> deleteFavoriteByFilter({
    required FavoriteQueryFilter filter,
  });

  // Count
  Future<int> countFavorite({
    required FavoriteQueryFilter filter,
  });
}
