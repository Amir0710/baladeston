

import 'package:baladeston/domain/Comment/failure/base_Comment_failure.dart';

abstract class CommentNotFoundFailure extends BaseCommentNotFoundFailure {
  const CommentNotFoundFailure();
}

abstract class CommentEntityNotFoundFailure
    extends CommentNotFoundFailure {
  const CommentEntityNotFoundFailure();
}
