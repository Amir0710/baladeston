import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/data/comment/model/comment_model.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentApi {
  Future<Result<PaginatedResponseModel<CommentModel>, CommentFailure>>
      getCommentByFilter({
    required CommentQueryFilter filter,
  });

  Future<Result<CommentModel, CommentFailure>> getCommentById({
    required int id,
  });

  Future<Result<CommentModel, CommentFailure>> createComment({
    required CommentModel comment,
  });

  Future<Result<CommentModel, CommentFailure>> updateCommentById({
    required CommentModel comment,
    required int id,
  });

  Future<Result<int, CommentFailure>> updateCommentByFilter({
    required CommentModel comment,
    required CommentQueryFilter filter,
  });

  Future<Result<int, CommentFailure>> deleteCommentById({
    required int id,
  });

  Future<Result<int, CommentFailure>> deleteCommentByFilter({
    required CommentQueryFilter filter,
  });

  Future<Result<int, CommentFailure>> countAllComment({
    required CommentQueryFilter filter,
  });
}
