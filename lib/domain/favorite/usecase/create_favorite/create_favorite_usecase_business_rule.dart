import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/validation/favorite_entity_failure.dart';

class CreateFavoriteUseCaseBusinessRule {
  final FavoriteEntity favorite;

  const CreateFavoriteUseCaseBusinessRule({
    required this.favorite,
  });

  Result<void, FavoriteFailure> validate() {
    return _entityValidation();
  }

  Result<void, FavoriteFailure> _entityValidation() {
    // userId
    if (favorite.userId <= 0) {
      return const Result.failure(FavoriteEntityInvalidUserIdFailure());
    }

    // targetId
    if (favorite.targetId <= 0) {
      return const Result.failure(FavoriteEntityInvalidTargetIdFailure());
    }

    return const Result.success(null);
  }
}
