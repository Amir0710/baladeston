import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

class CommentNotFoundFailure extends BaseCommentNotFoundFailure {
  const CommentNotFoundFailure();
}

class CommentModelNotFoundFailure extends CommentNotFoundFailure {
  const CommentModelNotFoundFailure();
}
