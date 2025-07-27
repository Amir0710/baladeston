
import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';

abstract class FavoriteRepository {
  Future<void> toggleFavorite({required FavoriteEntity favorite});
  Future<List<FavoriteEntity>> getLastPosition(
      {FavoriteQueryFilter filter});
  Future<void> createFavorite({required FavoriteEntity favorite});
}
