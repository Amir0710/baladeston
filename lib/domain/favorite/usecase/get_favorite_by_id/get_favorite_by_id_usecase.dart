import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_id/get_favorite_by_id_usecase_business_rule.dart';

class GetFavoriteByIdUseCase {
  final FavoriteRepository repository;

  const GetFavoriteByIdUseCase({
    required this.repository,
  });

  Future<Result<FavoriteEntity, FavoriteFailure>> call({
    required int id,
  }) async {
    try {
      final rule = GetFavoriteByIdUseCaseBusinessRule(id: id);
      rule.validate();
    } on FavoriteEntityException catch (e) {
      return Result.failure(FavoriteValidationFailure(e.message));
    }

    return repository.getFavoriteById(id: id);
  }
}
