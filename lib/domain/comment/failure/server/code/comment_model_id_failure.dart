import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentModelIdFailure
    extends BaseCommentServerValidationFailure {
  const CommentModelIdFailure();
}

class CommentModelIdMissingFailure extends CommentModelIdFailure {
  const CommentModelIdMissingFailure();
}

class CommentModelIdInvalidFailure extends CommentModelIdFailure {
  const CommentModelIdInvalidFailure();
}
