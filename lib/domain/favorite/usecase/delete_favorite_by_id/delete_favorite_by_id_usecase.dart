import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_id/delete_favorite_by_id_usecase_business_rule.dart';

class DeleteFavoriteByIdUseCase {
  final FavoriteRepository repository;

  const DeleteFavoriteByIdUseCase({
    required this.repository,
  });

  Future<Result<int, FavoriteFailure>> call({
    required int id,
  }) async {
    final businessRule = DeleteFavoriteByIdUseCaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteFavoriteById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
