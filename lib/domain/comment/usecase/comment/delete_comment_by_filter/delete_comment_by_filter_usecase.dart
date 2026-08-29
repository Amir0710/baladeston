import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/comment/delete_comment_by_filter/delete_comment_by_filter_usecase_business_rule.dart';

class DeleteCommentByFilterUseCase {
  final CommentRepository repository;

  const DeleteCommentByFilterUseCase({required this.repository});

  Future<Result<int, CommentFailure>> call({
    required CommentQueryFilter filter,
  }) async {
    final businessRule = DeleteCommentByFilterUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCommentByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
