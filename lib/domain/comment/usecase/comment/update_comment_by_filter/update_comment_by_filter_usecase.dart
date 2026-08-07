import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/Comment/failure/base_Comment_failure.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/usecase/update_comment_by_filter/update_comment_by_filter_usecase_business_rule.dart';

class UpdateCommentByFilterUseCase {
  final CommentRepository repository;

  const UpdateCommentByFilterUseCase({required this.repository});

  Future<Result<List<int>, CommentFailure>> call({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  }) async {
    final businessRule = UpdateCommentByFilterUseCaseBusinessRule(
      comment: comment,
      filter: filter,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateCommentByFilter(
        comment: comment,
        filter: filter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
