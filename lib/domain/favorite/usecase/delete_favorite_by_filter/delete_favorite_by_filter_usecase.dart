import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/exception/favorite_filter_exception.dart';
import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
import 'delete_favorite_by_filter_usecase_business_rule.dart';

class DeleteFavoriteByFilterUseCase {
  final FavoriteRepository repository;

  const DeleteFavoriteByFilterUseCase({
    required this.repository,
  });

  Future<Result<void, FavoriteFailure>> call({
    required FavoriteQueryFilter filter,
  }) async {
    try {
      final rule = DeleteFavoriteByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on FavoriteFilterException catch (e) {
      return Result.failure(
        FavoriteValidationFailure(e.message),
      );
    }

    return repository.deleteFavoriteByFilter(filter: filter);
  }
}
