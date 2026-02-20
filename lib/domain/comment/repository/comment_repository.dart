import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';

abstract class CommentRepository {

  /// Get comments by filter
  Future<Result<List<CommentEntity>, CommentFailure>> getCommentByFilter({
    required CommentQueryFilter filter,
  });

  /// Get single comment by id
  Future<Result<CommentEntity, CommentFailure>> getCommentById({
    required int id,
  });

  /// Create new comment
  Future<Result<CommentEntity, CommentFailure>> createComment({
    required CommentEntity comment,
  });

  /// Update comment by id
  Future<Result<CommentEntity, CommentFailure>> updateCommentById({
    required CommentEntity comment,
    required int id,
  });

  /// Update comments by filter
  Future<Result<List<CommentEntity>, CommentFailure>> updateCommentByFilter({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  });

  /// Delete comment by id
  Future<Result<int, CommentFailure>> deleteCommentById({
    required int id,
  });

  /// Delete comments by filter
  Future<Result<List<int>, CommentFailure>> deleteCommentByFilter({
    required CommentQueryFilter filter,
  });

  /// Count comments by filter
  Future<Result<int, CommentFailure>> countAllComment({
    required CommentQueryFilter filter,
  });
}
