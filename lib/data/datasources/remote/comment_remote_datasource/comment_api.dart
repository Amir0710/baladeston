import 'package:baladeston/data/models/comment/comment_model.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';

abstract class CommentApi {
  Future<List<CommentModel>?> getCommentByFilter(
      {required CommentQueryFilter filter});
  Future<CommentModel> getCommentById({required int id});
  Future<CommentModel> createComment({required CommentModel comment});
  Future<void> deleteCommentById({required int id});
  Future<void> deleteCommentByFilter({required CommentQueryFilter filter});
  Future<CommentModel> updateComment({required CommentModel comment});
  Future<int> countComment({required int id});
}
