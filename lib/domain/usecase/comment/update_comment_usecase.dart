import 'package:baladeston/domain/entitys/comment/comment.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class UpdateCommentUseCase {
  final CommentRepository repository;

  UpdateCommentUseCase(this.repository);

  Future<void> call(Comment comment) {
    return repository.updateComment(comment: comment);
  }
}
