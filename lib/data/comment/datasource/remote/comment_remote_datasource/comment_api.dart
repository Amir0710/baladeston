import 'package:baladeston/data/comment/model/comment_model.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';

abstract class CommentApi {
  // --------------------------------------------------
  // Read
  // --------------------------------------------------

  Future<List<CommentModel>> getCommentByFilter({
    required CommentQueryFilter filter,
  });

  Future<CommentModel> getCommentById({
    required int id,
  });

  // --------------------------------------------------
  // Create
  // --------------------------------------------------

  Future<CommentModel> createComment({
    required CommentModel comment,
  });

  // --------------------------------------------------
  // Update
  // --------------------------------------------------

  Future<CommentModel> updateCommentById({
    required CommentModel comment,
    required int id,
  });

  Future<List<CommentModel>> updateCommentByFilter({
    required CommentModel comment,
    required CommentQueryFilter filter,
  });

  // --------------------------------------------------
  // Delete
  // --------------------------------------------------

  Future<int> deleteCommentById({
    required int id,
  });

  Future<List<int>> deleteCommentByFilter({
    required CommentQueryFilter filter,
  });

  // --------------------------------------------------
  // Count
  // --------------------------------------------------

  Future<int> countAllComment({
    required CommentQueryFilter filter,
  });
}
