import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/comment/update_comment_by_id/update_comment_by_id_usecase_business_rule.dart';

class UpdateCommentByIdUseCase {
  final CommentRepository repository;

  const UpdateCommentByIdUseCase({
    required this.repository,
  });

  Future<Result<CommentEntity, CommentFailure>> call({
    required CommentEntity comment,
    required int id,
  }) async {
    final businessRule = UpdateCommentByIdUseCaseBusinessRule(
      comment: comment,
      id: id,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateCommentById(
        comment: comment,
        id: id,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
