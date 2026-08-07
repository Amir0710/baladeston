import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/data/comment/filter/rate/rate_query_filter.dart';
import 'package:baladeston/domain/comment/entity/rate/rating_entity.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/repository/rate/rete_repository.dart';

class RateCommentUsecase {
  final ReteRepository repository;

  const RateCommentUsecase({required this.repository});

  Future<Result<RatingEntity, CommentFailure>> call({
    required RateQueryFilter filter,
  }) async {
    final businessRule = RateCommentUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getRateByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
