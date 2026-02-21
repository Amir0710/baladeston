import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';
import 'package:baladeston/domain/comment/exception/comment_entity_exception.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/usecase/create_comment/create_comment_usecase_business_rule.dart';

class CreateCommentUseCase {
  final CommentRepository repository;

  const CreateCommentUseCase({
    required this.repository,
  });

  Future<Result<CommentEntity, CommentFailure>> call({
    required CommentEntity comment,
  }) async {
    try {
      CreateCommentUseCaseBusinessRule(comment: comment).validate();
    } on CommentEntityException catch (e) {
      return Result.failure(
        CommentValidationFailure(e.message),
      );
    }

    return repository.createComment(comment: comment);
  }
}
