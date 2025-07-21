import 'package:baladeston/domain/entitys/comment/comment.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class CreateCommentUseCase {
  final CommentRepository repository;

  CreateCommentUseCase(this.repository);

  Future<void> call(Comment comment) {
    return repository.createComment(comment: comment);
  }
}
