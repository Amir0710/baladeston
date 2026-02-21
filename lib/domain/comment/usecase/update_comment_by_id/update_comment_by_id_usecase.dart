import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/update_comment_by_id/update_comment_by_id_usecase_business_rule.dart';

class UpdateCommentByIdUseCase {
  final CommentRepository repository;

  const UpdateCommentByIdUseCase({
    required this.repository,
  });

  Future<Result<CommentEntity, CommentFailure>> call({
    required CommentEntity comment,
    required int id,
  }) async {
    try {
      UpdateCommentByIdUseCaseBusinessRule(
        comment: comment,
        id: id,
      ).validate();
    } on Exception catch (e) {
      return Result.failure(
        CommentValidationFailure(e.toString()),
      );
    }

    return repository.updateCommentById(
      comment: comment,
      id: id,
    );
  }
}
