import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/count_comment/count_comment_usecase_business_rule.dart';

class CountCommentUseCase {
  final CommentRepository repository;

  const CountCommentUseCase({
    required this.repository,
  });

  Future<Result<int, CommentFailure>> call({
    required CommentQueryFilter filter,
  }) async {
    try {
      CountCommentUseCaseBusinessRule(filter: filter).validate();
    } on CommentFilterException catch (e) {
      return Result.failure(
        CommentValidationFailure(e.message),
      );
    }

    return repository.countAllComment(filter: filter);
  }
}
