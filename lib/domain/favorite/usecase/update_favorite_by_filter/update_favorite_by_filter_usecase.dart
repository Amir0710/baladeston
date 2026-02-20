import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/exception/favorite_filter_exception.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
import 'update_favorite_by_filter_usecase_business_rule.dart';

class UpdateFavoriteByFilterUseCase {
  final FavoriteRepository repository;

  const UpdateFavoriteByFilterUseCase({
    required this.repository,
  });

  Future<Result<FavoriteEntity, FavoriteFailure>> call({
    required FavoriteQueryFilter filter,
    required FavoriteEntity favorite,
  }) async {
    try {
      final rule = UpdateFavoriteByFilterUseCaseBusinessRule(
        filter: filter,
        favorite: favorite,
      );
      rule.validate();
    } on FavoriteEntityException catch (e) {
      return Result.failure(
        FavoriteValidationFailure(e.message),
      );
    } on FavoriteFilterException catch (e) {
      return Result.failure(
        FavoriteValidationFailure(e.message),
      );
    }

    return repository.updateFavoriteByFilter(
      filter: filter,
      favorite: favorite,
    );
  }
}
