import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';

abstract class CommentRepository {
  Future<Result<PaginatedResponseModel<CommentEntity>, CommentFailure>>
  getCommentByFilter({
    required CommentQueryFilter filter,
  });

  Future<Result<CommentEntity, CommentFailure>> getCommentById({
    required int id,
  });

  Future<Result<CommentEntity, CommentFailure>> createComment({
    required CommentEntity comment,
  });

  Future<Result<int, CommentFailure>> updateCommentByFilter({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  });

  Future<Result<CommentEntity, CommentFailure>> updateCommentById({
    required CommentEntity comment,
    required int id,
  });

  Future<Result<int, CommentFailure>> deleteCommentByFilter({
    required CommentQueryFilter filter,
  });

  Future<Result<int, CommentFailure>> deleteCommentById({
    required int id,
  });

  Future<Result<int, CommentFailure>> countAllComment({
    required CommentQueryFilter filter,
  });
}
