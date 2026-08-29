import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/update_favorite_by_id/update_favorite_by_id_usecase_business_rule.dart';

class UpdateFavoriteByIdUseCase {
  final FavoriteRepository repository;

  const UpdateFavoriteByIdUseCase({
    required this.repository,
  });

  Future<Result<FavoriteEntity, FavoriteFailure>> call({
    required int id,
    required FavoriteEntity favorite,
  }) async {
    final businessRule = UpdateFavoriteByIdUseCaseBusinessRule(
      id: id,
      favorite: favorite,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateFavoriteById(
        id: id,
        favorite: favorite,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
