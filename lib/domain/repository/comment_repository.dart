import '../entities/comment.dart';
import '../models/comment_query_filter.dart';

abstract class CommentRepository {
  Future<List<Comment>?> getComment({required CommentQueryFilter filter });

  Future<void> createComment({required Comment comment});

  Future<void> deleteComment({
    required int commentId,
    required int userId,
  }); // delete by owner, commenter, admin
  Future<void> updateComment({required Comment comment});
  Future<int> countComment({required int videoId}) ;
}
