import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/create_favorite/create_favorite_usecase_business_rule.dart';

class CreateFavoriteUseCase {
  final FavoriteRepository repository;

  const CreateFavoriteUseCase({
    required this.repository,
  });

  Future<Result<FavoriteEntity, FavoriteFailure>> call({
    required FavoriteEntity favorite,
  }) async {
    final businessRule = CreateFavoriteUseCaseBusinessRule(favorite: favorite);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.createFavorite(favorite: favorite),
      failure: (failure) => Result.failure(failure),
    );
  }
}
