import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/exception/favorite_filter_exception.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
import 'count_favorite_usecase_business_rule.dart';

class CountFavoriteUseCase {
  final FavoriteRepository repository;

  const CountFavoriteUseCase({
    required this.repository,
  });

  Future<Result<int, FavoriteFailure>> call({
    required FavoriteQueryFilter filter,
  }) async {
    try {
      final rule = CountFavoriteUseCaseBusinessRule(filter: filter);
      rule.validate();
    } on FavoriteFilterException catch (e) {
      return Result.failure(
        FavoriteValidationFailure(e.message),
      );
    }

    return repository.countFavorite(filter: filter);
  }
}
