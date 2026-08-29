import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/validation/favorite_entity_failure.dart';

class UpdateFavoriteByFilterUseCaseBusinessRule {
  final FavoriteQueryFilter filter;
  final FavoriteEntity favorite;

  const UpdateFavoriteByFilterUseCaseBusinessRule({
    required this.filter,
    required this.favorite,
  });

  Result<void, FavoriteFailure> validate() {
    if (favorite.userId <= 0) {
      return const Result.failure(FavoriteEntityInvalidUserIdFailure());
    }
    return const Result.success(null);
  }
}
