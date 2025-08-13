import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class DeleteFavoriteByFilterUseCase {
  final FavoriteRepository repository;

  DeleteFavoriteByFilterUseCase(this.repository);

  Future<void> call({required FavoriteQueryFilter filter}) {
    return repository.deleteFavoriteByFilter(filter: filter);
  }
}
