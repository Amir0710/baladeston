import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/usecase/comment/create_comment/create_comment_usecase_business_rule.dart';

class CreateCommentUseCase {
  final CommentRepository repository;

  const CreateCommentUseCase({required this.repository});

  Future<Result<CommentEntity, CommentFailure>> call({
    required CommentEntity comment,
  }) async {
    final businessRule = CreateCommentUseCaseBusinessRule(comment: comment);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.createComment(comment: comment),
      failure: (failure) => Result.failure(failure),
    );
  }
}
