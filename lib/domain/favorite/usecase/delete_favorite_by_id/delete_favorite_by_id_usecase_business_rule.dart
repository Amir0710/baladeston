import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/validation/favorite_entity_failure.dart';

class DeleteFavoriteByIdUseCaseBusinessRule {
  final int id;

  const DeleteFavoriteByIdUseCaseBusinessRule({
    required this.id,
  });

  Result<void, FavoriteFailure> validate() {
    if (id <= 0) {
      return const Result.failure(FavoriteEntityInvalidTargetIdFailure());
    }
    return const Result.success(null);
  }
}
