import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class CountFavoriteUseCase {
  final FavoriteRepository repository;

  CountFavoriteUseCase(this.repository);

  Future<int> call({required FavoriteQueryFilter filter}) {
    return repository.countFavorite(filter: filter);
  }
}
