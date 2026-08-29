import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/datasource/remote/comment_remote_datasource/comment_api.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/data/comment/mapper/comment/comment_mapper.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';

class CommentRepositoryImplementation extends CommentRepository {
  final CommentApi _api;

  CommentRepositoryImplementation({
    required CommentApi api,
  }) : _api = api;

  @override
  Future<Result<PaginatedResponseModel<CommentEntity>, CommentFailure>>
      getCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    final result = await _api.getCommentByFilter(filter: filter);

    return result.map(
      success: (s) {
        final paginatedModel = s.data;

        final entities = paginatedModel.items.map((e) => e.toEntity()).toList();

        final mapped = PaginatedResponseModel<CommentEntity>(
          items: entities,
          nextCursor: paginatedModel.nextCursor,
          isLast: paginatedModel.isLast,
        );

        return Result.success(mapped);
      },
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<CommentEntity, CommentFailure>> getCommentById({
    required int id,
  }) async {
    final result = await _api.getCommentById(id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<CommentEntity, CommentFailure>> createComment({
    required CommentEntity comment,
  }) async {
    final model = comment.toModel();
    final result = await _api.createComment(comment: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<CommentEntity, CommentFailure>> updateCommentById({
    required CommentEntity comment,
    required int id,
  }) async {
    final model = comment.toModel();
    final result = await _api.updateCommentById(comment: model, id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, CommentFailure>> updateCommentByFilter({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  }) async {
    final model = comment.toModel();
    return _api.updateCommentByFilter(
      comment: model,
      filter: filter,
    );
  }

  @override
  Future<Result<int, CommentFailure>> deleteCommentById({
    required int id,
  }) async {
    return _api.deleteCommentById(id: id);
  }

  @override
  Future<Result<int, CommentFailure>> deleteCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    return _api.deleteCommentByFilter(filter: filter);
  }

  @override
  Future<Result<int, CommentFailure>> countAllComment({
    required CommentQueryFilter filter,
  }) async {
    return _api.countAllComment(filter: filter);
  }
}
