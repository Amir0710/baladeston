import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';

class CreateCommentUseCase {
  final CommentRepository repository;

  CreateCommentUseCase(this.repository);

  Future<Result<CommentEntity, CommentFailure>> call({required CommentEntity comment}) {
    return repository.createComment(comment: comment);
  }
}
