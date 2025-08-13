import 'package:baladeston/data/models/favorite/favorite_model.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';

abstract class FavoriteApi {
  Future<FavoriteModel> updateFavorite({required FavoriteModel favorite});
  Future<List<FavoriteModel>?> getFavoriteByFilter(
      {required FavoriteQueryFilter filter});
  Future<FavoriteModel?> getFavoriteById({required int id});
  Future<FavoriteModel> createFavorite({required FavoriteModel favorite});
  Future<void> deleteFavoriteById({required int id});
  Future<void> deleteFavoriteByFilter({required FavoriteQueryFilter filter});
  Future<int> countFavorite({required FavoriteQueryFilter filter});
}
