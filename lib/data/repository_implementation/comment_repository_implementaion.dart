import 'package:baladeston/data/datasources/remote/comment_remote_datasource/comment_api.dart';
import 'package:baladeston/data/mapper/entity/comment_mapper.dart';
import 'package:baladeston/domain/entitys/comment/comment_entity.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class CommentRepositoryImplementation implements CommentRepository {
  final CommentApi _api;

  CommentRepositoryImplementation({required CommentApi api}) : _api = api;
  @override
  Future<int> countComment({required CommentQueryFilter filter}) async {
    try {
      return await _api.countComment(filter : filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CommentEntity> createComment({required CommentEntity comment}) async {
    try {
      final model = comment.toModel();
      final resultModel = await _api.createComment(comment: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<CommentEntity>?> getCommentByFilter(
      {required CommentQueryFilter filter}) async {
    try {
      final resultModel = await _api.getCommentByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CommentEntity> updateComment({required CommentEntity comment}) async {
    try {
      final model = comment.toModel();
      final resultModle = await _api.updateComment(comment: model);
      return resultModle.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCommentByFilter(
      {required CommentQueryFilter filter}) async {
    try {
      await _api.deleteCommentByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCommentById({required int id}) async {
    try {
      await _api.deleteCommentById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CommentEntity?> getCommentById({required int id}) async {
    try {
      final resutModel = await _api.getCommentById(id: id);
      return resutModel?.toEntity(); 
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
