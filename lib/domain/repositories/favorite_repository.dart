import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';

abstract class FavoriteRepository {
  Future<FavoriteEntity> updateFavorite({required FavoriteEntity favorite});
  Future<List<FavoriteEntity>?> getFavoriteByFilter(
      {required FavoriteQueryFilter filter});
  Future<FavoriteEntity?> getFavoriteById({required int id});
  Future<FavoriteEntity> createFavorite({required FavoriteEntity favorite});
  Future<void> deleteFavoriteById({required int id});
  Future<void> deleteFavoriteByFilter({required FavoriteQueryFilter filter});
  Future<int> countFavorite({required FavoriteQueryFilter filter});
}
