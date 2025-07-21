import 'package:baladeston/domain/repositories/comment_repository.dart';

class DeleteCommentUseCase {
  final CommentRepository repository;

  DeleteCommentUseCase(this.repository);

  Future<void> call({
    required int commentId,
    required int userId,
  }) {
    return repository.deleteComment(commentId: commentId, userId: userId);
  }
}
