import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_filter/get_favorite_by_filter_usecase_business_rule.dart';

class GetFavoriteByFilterUseCase {
  final FavoriteRepository repository;

  const GetFavoriteByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<FavoriteEntity>, FavoriteFailure>> call({
    required FavoriteQueryFilter filter,
  }) async {
    final businessRule = GetFavoriteByFilterUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getFavoriteByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
