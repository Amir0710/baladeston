import 'package:baladeston/domain/entitys/comment/comment_entity.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class CommentRepositoryImplementation implements CommentRepository {
  @override
  Future<int> countComment({required int videoId}) {
    // TODO: implement countComment
    throw UnimplementedError();
  }

  @override
  Future<CommentEntity> createComment({required CommentEntity comment}) {
    // TODO: implement createComment
    throw UnimplementedError();
  }

  @override
  Future<void> deleteComment({required int commentId, required int userId}) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<List<CommentEntity>?> getCommentByFilter(
      {required CommentQueryFilter filter}) {
    // TODO: implement getComment
    throw UnimplementedError();
  }

  @override
  Future<CommentEntity> getCommentById({required int comment}) {
    // TODO: implement getCommentById
    throw UnimplementedError();
  }

  @override
  Future<CommentEntity> updateComment({required CommentEntity comment}) {
    // TODO: implement updateComment
    throw UnimplementedError();
  }
}
