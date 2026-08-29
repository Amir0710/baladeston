import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_filter/delete_favorite_by_filter_usecase_business_rule.dart';

class DeleteFavoriteByFilterUseCase {
  final FavoriteRepository repository;

  const DeleteFavoriteByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<int>, FavoriteFailure>> call({
    required FavoriteQueryFilter filter,
  }) async {
    final businessRule =
        DeleteFavoriteByFilterUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteFavoriteByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
