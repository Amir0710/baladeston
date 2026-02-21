import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';
import 'package:baladeston/domain/comment/exception/comment_id_exception.dart';
import 'package:baladeston/domain/comment/usecase/get_comment_by_id/get_comment_by_id_usecase_business_rule.dart';

class GetCommentByIdUseCase {
  final CommentRepository repository;

  const GetCommentByIdUseCase({
    required this.repository,
  });

  Future<Result<CommentEntity, CommentFailure>> call({
    required int id,
  }) async {
    try {
      GetCommentByIdUseCaseBusinessRule(id: id).validate();
    } on CommentIdException catch (e) {
      return Result.failure(
        CommentValidationFailure(e.message),
      );
    }

    return repository.getCommentById(id: id);
  }
}
