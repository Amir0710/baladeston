import 'package:baladeston/data/datasources/remote/comment_remote_datasource/comment_api.dart';
import 'package:baladeston/domain/entitys/comment/comment_entity.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class CommentRepositoryImplementation implements CommentRepository {
  final CommentApi _api;

  CommentRepositoryImplementation({required CommentApi api}) : _api = api;
  @override
  Future<int> countComment({required int id}) async {
    try {
      return await _api.countComment(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CommentEntity> createComment({required CommentEntity comment}) async {
    try {
      return await _api.createComment(comment: comment);
    } catch (e) {
      throw Exception('error $e');
    }
  }


  @override
  Future<List<CommentEntity>?> getCommentByFilter(
      {required CommentQueryFilter filter}) async {
    try {
      return await _api.getCommentByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CommentEntity> updateComment({required CommentEntity comment}) async {
    try {
      return await _api.updateComment(comment: comment);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCommentByFilter({required CommentQueryFilter filter}) async {
    try {
      return  _api.deleteCommentByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCommentById({required int id}) {
    try {
      return  _api.deleteCommentById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CommentEntity> getCommentById({required int id}) async {
    try {
      return await _api.getCommentById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
