import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentFilterFailure extends BaseCommentValidationFailure {
  const CommentFilterFailure();
}

// ids
final class CommentFilterInvalidIdsFailure extends CommentFilterFailure {
  const CommentFilterInvalidIdsFailure();
}

// search term
final class CommentFilterTooShortSearchTermFailure
    extends CommentFilterFailure {
  const CommentFilterTooShortSearchTermFailure();
}

final class CommentFilterTooLongSearchTermFailure extends CommentFilterFailure {
  const CommentFilterTooLongSearchTermFailure();
}

final class CommentFilterControlCharSearchTermFailure
    extends CommentFilterFailure {
  const CommentFilterControlCharSearchTermFailure();
}

final class CommentFilterContainsHtmlSearchTermFailure
    extends CommentFilterFailure {
  const CommentFilterContainsHtmlSearchTermFailure();
}

final class CommentFilterEmojiOnlySearchTermFailure
    extends CommentFilterFailure {
  const CommentFilterEmojiOnlySearchTermFailure();
}


// dates
final class CommentFilterInvalidCreatedAtFailure extends CommentFilterFailure {
  const CommentFilterInvalidCreatedAtFailure();
}

final class CommentFilterInvalidCreatedBeforeFailure
    extends CommentFilterFailure {
  const CommentFilterInvalidCreatedBeforeFailure();
}

final class CommentFilterInvalidDatesRangeFailure extends CommentFilterFailure {
  const CommentFilterInvalidDatesRangeFailure();
}

// empty
final class CommentFilterEmptyFailure extends CommentFilterFailure {
  const CommentFilterEmptyFailure();
}
