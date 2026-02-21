import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_filter/delete_comment_by_filter_usecase_business_rule.dart';

class DeleteCommentByFilterUseCase {
  final CommentRepository repository;

  const DeleteCommentByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<int>, CommentFailure>> call({
    required CommentQueryFilter filter,
  }) async {
    try {
      DeleteCommentByFilterUseCaseBusinessRule(filter: filter).validate();
    } on CommentFilterException catch (e) {
      return Result.failure(
        CommentValidationFailure(e.message),
      );
    }

    return repository.deleteCommentByFilter(filter: filter);
  }
}
