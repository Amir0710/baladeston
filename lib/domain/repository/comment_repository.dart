import '../entities/comment.dart';

abstract class CommentRepository {
  Future<List<Comment>?> getComment({required int videoId});

  Future<void> createComment({required Comment comment});

  Future<void> deleteComment({
    required int commentId,
    required int userId,
  }); // delete by owner, commenter, admin
  Future<void> updateComment({required Comment comment});
}
