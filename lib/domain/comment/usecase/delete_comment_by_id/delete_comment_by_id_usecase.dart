import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/exception/comment_id_exception.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_id/delete_comment_by_id_usecase_business_rule.dart';

class DeleteCommentByIdUseCase {
  final CommentRepository repository;

  const DeleteCommentByIdUseCase({
    required this.repository,
  });

  Future<Result<int, CommentFailure>> call({
    required int id,
  }) async {
    try {
      DeleteCommentByIdUseCaseBusinessRule(id: id).validate();
    } on CommentIdException catch (e) {
      return Result.failure(
        CommentValidationFailure(e.message),
      );
    }

    return repository.deleteCommentById(id: id);
  }
}
