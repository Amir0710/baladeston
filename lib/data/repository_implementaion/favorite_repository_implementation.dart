import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImplementation extends FavoriteRepository {
  @override
  Future<void> createFavorite({required FavoriteEntity favorite}) {
    // TODO: implement createFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<FavoriteEntity>> getLastPosition({required FavoriteQueryFilter filter}) {
    // TODO: implement getLastPosition
    throw UnimplementedError();
  }

  @override
  Future<void> toggleFavorite({required FavoriteEntity favorite}) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }
} 