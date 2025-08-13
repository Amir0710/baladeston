import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class GetFavoriteByFilterUseCase {
  final FavoriteRepository repository;

  GetFavoriteByFilterUseCase(this.repository);

  Future<List<FavoriteEntity>?> call({required FavoriteQueryFilter filter}) {
    return repository.getFavoriteByFilter(filter: filter);
  }
}
