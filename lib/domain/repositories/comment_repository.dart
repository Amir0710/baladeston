import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/entitys/comment/comment_entity.dart';

abstract class CommentRepository {
  Future<List<CommentEntity>?> getCommentByFilter(
      {required CommentQueryFilter filter});
  Future<CommentEntity> getCommentById({required int id});
  Future<CommentEntity> createComment({required CommentEntity comment});
  Future<void> deleteCommentById({required int id});
  Future<void> deleteCommentByFilter({required CommentQueryFilter filter});
  Future<CommentEntity> updateComment({required CommentEntity comment});
  Future<int> countComment({required int id});
}
