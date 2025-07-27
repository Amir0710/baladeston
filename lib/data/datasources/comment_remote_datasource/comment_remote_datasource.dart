import 'package:baladeston/data/models/comment/comment_model.dart';
import 'package:baladeston/domain/entitys/comment/comment_entity.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';

abstract class CommentRemoteDataSource {
  Future<List<CommentModel>> fetchComments(CommentQueryFilter filter);
  Future<void> createComment(CommentModel comment);
  Future<void> deleteComment(int commentId, int userId);
  Future<void> updateComment(CommentModel comment);
  Future<int> countComment(int videoId);
}

class CommentRemoteDataSourceImplementaion implements CommentRemoteDataSource {
  @override
  Future<List<CommentModel>> fetchComments(CommentQueryFilter filter) async {
    // TODO: implement API call
    throw UnimplementedError();
  }

  @override
  Future<void> createComment(CommentModel comment) async {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteComment(int commentId, int userId) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateComment(CommentModel comment) async {
    throw UnimplementedError();
  }

  @override
  Future<int> countComment(int videoId) async {
    throw UnimplementedError();
  }
}
