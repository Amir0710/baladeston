import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/validation/comment_id_failure.dart';

class GetCommentByIdUseCaseBusinessRule {
  final int id;

  const GetCommentByIdUseCaseBusinessRule({
    required this.id,
  });

  Result<void, CommentFailure> validate() {
    return idValidation();
  }

  Result<void, CommentFailure> idValidation() {
    if (id <= 0) {
      return const Result.failure(CommentIdInvalidFailure());
    }
    return const Result.success(null);
  }
}
