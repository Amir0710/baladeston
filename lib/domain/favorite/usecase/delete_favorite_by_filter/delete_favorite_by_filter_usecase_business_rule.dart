import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

class DeleteFavoriteByFilterUseCaseBusinessRule {
  final FavoriteQueryFilter filter;

  const DeleteFavoriteByFilterUseCaseBusinessRule({
    required this.filter,
  });

  Result<void, FavoriteFailure> validate() {
    return const Result.success(null);
  }
}
