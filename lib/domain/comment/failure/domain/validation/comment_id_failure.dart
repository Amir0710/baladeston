import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentIdFailure extends BaseCommentValidationFailure {
  const CommentIdFailure();
}

// id
class CommentIdMissingFailure extends CommentIdFailure {
  const CommentIdMissingFailure();
}

class CommentIdInvalidFailure extends CommentIdFailure {
  const CommentIdInvalidFailure();
}
