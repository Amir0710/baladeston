import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_id/get_favorite_by_id_usecase_business_rule.dart';

class GetFavoriteByIdUseCase {
  final FavoriteRepository repository;

  const GetFavoriteByIdUseCase({
    required this.repository,
  });

  Future<Result<FavoriteEntity, FavoriteFailure>> call({
    required int id,
  }) async {
    final businessRule = GetFavoriteByIdUseCaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getFavoriteById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
