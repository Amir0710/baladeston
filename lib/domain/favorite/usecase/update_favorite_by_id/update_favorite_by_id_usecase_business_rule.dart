import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/validation/favorite_entity_failure.dart';

class UpdateFavoriteByIdUseCaseBusinessRule {
  final int id;
  final FavoriteEntity favorite;

  const UpdateFavoriteByIdUseCaseBusinessRule({
    required this.id,
    required this.favorite,
  });

  Result<void, FavoriteFailure> validate() {
    if (id <= 0) {
      return const Result.failure(FavoriteEntityInvalidTargetIdFailure());
    }
    if (favorite.userId <= 0) {
      return const Result.failure(FavoriteEntityInvalidUserIdFailure());
    }
    return const Result.success(null);
  }
}
