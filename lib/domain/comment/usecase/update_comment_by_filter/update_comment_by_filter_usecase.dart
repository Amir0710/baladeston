import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';
import 'package:baladeston/domain/comment/exception/comment_entity_exception.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/usecase/update_comment_by_filter/update_comment_by_filter_usecase_business_rule.dart';

class UpdateCommentByFilterUseCase {
  final CommentRepository repository;

  const UpdateCommentByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<CommentEntity>, CommentFailure>> call({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  }) async {
    try {
      UpdateCommentByFilterUseCaseBusinessRule(
        comment: comment,
        filter: filter,
      ).validate();
    } on CommentEntityException catch (e) {
      return Result.failure(
        CommentValidationFailure(e.message),
      );
    } on CommentFilterException catch (e) {
      return Result.failure(
        CommentValidationFailure(e.message),
      );
    }

    return repository.updateCommentByFilter(
      comment: comment,
      filter: filter,
    );
  }
}
