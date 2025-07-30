import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';

abstract class FavoriteRepository {

  Future<FavoriteEntity> toggleFavorite({required FavoriteEntity favorite});
  Future<List<FavoriteEntity>?> getLastPosition(
      {required FavoriteQueryFilter filter});
  Future<FavoriteEntity> createFavorite({required FavoriteEntity favorite});
}
