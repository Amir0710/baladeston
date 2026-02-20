import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';

import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
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
    try {
      final rule =
      UpdateFavoriteByIdUsecaseBusinessRule(id: id, favorite: favorite);
      rule.validate();
    } on Exception catch (e) {
      return Result.failure(FavoriteValidationFailure(e.toString()));
    }

    return repository.updateFavoriteById(
      id: id,
      favorite: favorite,
    );
  }
}
