import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/entitys/comment/comment_entity.dart';

abstract class CommentRepository {
  Future<List<CommentEntity>?> getComment({required CommentQueryFilter filter});
  Future<CommentEntity> getCommentById({required int comment});

  Future<CommentEntity> createComment({required CommentEntity comment});

  Future<void> deleteComment({
    required int commentId,
    required int userId,
  }); // delete by owner, commenter, admin
  Future<CommentEntity> updateComment({required CommentEntity comment});
  Future<int> countComment({required int videoId});
}
