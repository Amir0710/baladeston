import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_id/delete_favorite_by_id_usecase_business_rule.dart';

class DeleteFavoriteByIdUseCase {
  final FavoriteRepository repository;

  const DeleteFavoriteByIdUseCase({
    required this.repository,
  });

  Future<Result<int, FavoriteFailure>> call({
    required int id,
  }) async {
    try {
      final rule = DeleteFavoriteByIdUseCaseBusinessRule(id: id);
      rule.validate();
    } on FavoriteEntityException catch (e) {
      return Result.failure(FavoriteValidationFailure(e.message));
    }

    return repository.deleteFavoriteById(id: id);
  }
}
