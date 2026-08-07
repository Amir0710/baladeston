import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/create_favorite/create_favorite_usecase_business_rule.dart';

class CreateFavoriteUseCase {
  final FavoriteRepository repository;

  const CreateFavoriteUseCase({
    required this.repository,
  });

  Future<Result<FavoriteEntity, FavoriteFailure>> call({
    required FavoriteEntity favorite,
  }) async {
    try {
      final rule =
      CreateFavoriteUsecaseBusinessRule(favorite: favorite);
      rule.validate();
    } on FavoriteEntityException catch (e) {
      return Result.failure(FavoriteValidationFailure(e.message));
    }

    return repository.createFavorite(favorite: favorite);
  }
}
