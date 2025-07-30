import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class GetLastPosition {
  final FavoriteRepository repositor;

  GetLastPosition(this.repositor);
  Future<List<FavoriteEntity>?> call({required FavoriteQueryFilter filter}) {
    return repositor.getLastPosition(filter: filter);
  }
}
