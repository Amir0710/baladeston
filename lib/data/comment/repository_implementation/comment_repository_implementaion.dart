import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/datasource/remote/comment_remote_datasource/comment_api.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/data/comment/mapper/comment_mapper.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/failure/comment_failure_mapper.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';

class CommentRepositoryImplementation extends CommentRepository {
  final CommentApi _api;

  CommentRepositoryImplementation({
    required CommentApi api,
  }) : _api = api;

  // --------------------------------------------------
  // Read
  // --------------------------------------------------

  @override
  Future<Result<List<CommentEntity>, CommentFailure>> getCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    try {
      final models = await _api.getCommentByFilter(filter: filter);
      return Result.success(
        models.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }

  @override
  Future<Result<CommentEntity, CommentFailure>> getCommentById({
    required int id,
  }) async {
    try {
      final model = await _api.getCommentById(id: id);
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }

  // --------------------------------------------------
  // Create
  // --------------------------------------------------

  @override
  Future<Result<CommentEntity, CommentFailure>> createComment({
    required CommentEntity comment,
  }) async {
    try {
      final model = comment.toModel();
      final createdModel = await _api.createComment(comment: model);
      return Result.success(createdModel.toEntity());
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }

  // --------------------------------------------------
  // Update
  // --------------------------------------------------

  @override
  Future<Result<CommentEntity, CommentFailure>> updateCommentById({
    required CommentEntity comment,
    required int id,
  }) async {
    try {
      final model = comment.toModel();
      final updatedModel =
      await _api.updateCommentById(comment: model, id: id);
      return Result.success(updatedModel.toEntity());
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }

  @override
  Future<Result<List<CommentEntity>, CommentFailure>> updateCommentByFilter({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  }) async {
    try {
      final model = comment.toModel();
      final models = await _api.updateCommentByFilter(
        comment: model,
        filter: filter,
      );
      return Result.success(
        models.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }

  // --------------------------------------------------
  // Delete
  // --------------------------------------------------

  @override
  Future<Result<int, CommentFailure>> deleteCommentById({
    required int id,
  }) async {
    try {
      final deletedId = await _api.deleteCommentById(id: id);
      return Result.success(deletedId);
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }

  @override
  Future<Result<List<int>, CommentFailure>> deleteCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    try {
      final ids = await _api.deleteCommentByFilter(filter: filter);
      return Result.success(ids);
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }

  // --------------------------------------------------
  // Count
  // --------------------------------------------------

  @override
  Future<Result<int, CommentFailure>> countAllComment({
    required CommentQueryFilter filter,
  }) async {
    try {
      final count = await _api.countAllComment(filter: filter);
      return Result.success(count);
    } catch (error) {
      return Result.failure(mapCommentException(error));
    }
  }
}
