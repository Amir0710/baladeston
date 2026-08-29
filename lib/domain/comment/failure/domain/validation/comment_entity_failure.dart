import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentEntityFailure extends BaseCommentValidationFailure {
  const CommentEntityFailure();
}


// content
final class CommentEntityMissingContentFailure
    extends CommentEntityFailure {
  const CommentEntityMissingContentFailure();
}
final class CommentEntityTooShortContentFailure
    extends CommentEntityFailure {
  const CommentEntityTooShortContentFailure();
}

final class CommentEntityTooLongContentFailure
    extends CommentEntityFailure {
  const CommentEntityTooLongContentFailure();
}

final class CommentEntityControlCharContentFailure
    extends CommentEntityFailure {
  const CommentEntityControlCharContentFailure();
}

final class CommentEntityContainsHtmlContentFailure
    extends CommentEntityFailure {
  const CommentEntityContainsHtmlContentFailure();
}

final class CommentEntityEmojiOnlyContentFailure
    extends CommentEntityFailure {
  const CommentEntityEmojiOnlyContentFailure();
}