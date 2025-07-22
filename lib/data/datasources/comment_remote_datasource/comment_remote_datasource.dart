import 'package:baladeston/domain/entitys/comment/comment.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';

abstract class CommentRemoteDataSource {
  Future<List<Comment>> fetchComments(CommentQueryFilter filter);
  Future<void> createComment(Comment comment);
  Future<void> deleteComment(int commentId, int userId);
  Future<void> updateComment(Comment comment);
  Future<int> countComment(int videoId);
}

class CommentRemoteDataSourceImplementaion implements CommentRemoteDataSource {
  @override
  Future<List<Comment>> fetchComments(CommentQueryFilter filter) async {
    // TODO: implement API call
    throw UnimplementedError();
  }

  @override
  Future<void> createComment(Comment comment) async {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteComment(int commentId, int userId) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateComment(Comment comment) async {
    throw UnimplementedError();
  }

  @override
  Future<int> countComment(int videoId) async {
    throw UnimplementedError();
  }
}
