import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/count_favorite/count_favorite_usecase_business_rule.dart';

class CountFavoriteUseCase {
  final FavoriteRepository repository;

  const CountFavoriteUseCase({
    required this.repository,
  });

  Future<Result<int, FavoriteFailure>> call({
    required FavoriteQueryFilter filter,
  }) async {
    final businessRule = CountFavoriteUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.countFavorite(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
