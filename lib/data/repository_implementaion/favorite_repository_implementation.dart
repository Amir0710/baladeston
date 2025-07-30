import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImplementation extends FavoriteRepository {
  @override
  Future<FavoriteEntity> createFavorite({required FavoriteEntity favorite}) {
    // TODO: implement createFavorite
    throw UnimplementedError();
  }

  @override
  Future<FavoriteEntity> getFavoriteById({required int favorite}) {
    // TODO: implement getFavoriteById
    throw UnimplementedError();
  }

  @override
  Future<List<FavoriteEntity>?> getLastPosition({required FavoriteQueryFilter filter}) {
    // TODO: implement getLastPosition
    throw UnimplementedError();
  }

  @override
  Future<FavoriteEntity> toggleFavorite({required FavoriteEntity favorite}) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }
}
