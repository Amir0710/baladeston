import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/comment/count_comment/count_comment_usecase_business_rule.dart';

class CountCommentUseCase {
  final CommentRepository repository;

  const CountCommentUseCase({required this.repository});

  Future<Result<int, CommentFailure>> call({
    required CommentQueryFilter filter,
  }) async {
    final businessRule = CountCommentUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.countAllComment(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
