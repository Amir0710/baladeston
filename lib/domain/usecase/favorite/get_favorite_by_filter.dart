import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class GetFavoriteByFilter {
  final FavoriteRepository repository;

  GetFavoriteByFilter(this.repository);

  Future<List<FavoriteEntity>?> call(FavoriteQueryFilter filter) {
    return repository.getfavoriteByFilter(filter: filter);
  }
}
