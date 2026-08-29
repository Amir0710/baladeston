import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/update_favorite_by_filter/update_favorite_by_filter_usecase_business_rule.dart';

class UpdateFavoriteByFilterUseCase {
  final FavoriteRepository repository;

  const UpdateFavoriteByFilterUseCase({
    required this.repository,
  });

  Future<Result<FavoriteEntity, FavoriteFailure>> call({
    required FavoriteQueryFilter filter,
    required FavoriteEntity favorite,
  }) async {
    final businessRule = UpdateFavoriteByFilterUseCaseBusinessRule(
      filter: filter,
      favorite: favorite,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateFavoriteByFilter(
        filter: filter,
        favorite: favorite,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
