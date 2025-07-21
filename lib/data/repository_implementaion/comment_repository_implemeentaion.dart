import 'package:baladeston/data/datasources/user_datasource/comment_remote_datasource/comment_remote_datasource.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';
import 'package:baladeston/domain/entitys/comment/comment.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';

class CommentRepositoryImplementation implements CommentRepository {
  final CommentRemoteDataSource remoteDataSource;
  

  CommentRepositoryImplementation({required this.remoteDataSource});

  @override
  Future<void> createComment({required Comment comment}) {
    return remoteDataSource.createComment(comment);
  }

  @override
  Future<void> deleteComment({required int commentId, required int userId}) {
    return remoteDataSource.deleteComment(commentId, userId);
  }

  @override
  Future<List<Comment>> getComment({required CommentQueryFilter filter}) {
    return remoteDataSource.fetchComments(filter);
  }

  @override
  Future<void> updateComment({required Comment comment}) {
    return remoteDataSource.updateComment(comment);
  }

  @override
  Future<int> countComment({required int videoId}) {
    return remoteDataSource.countComment(videoId);
  }
}
