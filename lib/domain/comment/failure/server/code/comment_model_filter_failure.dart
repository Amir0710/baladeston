import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentModelFilterFailure
    extends BaseCommentServerValidationFailure {
  const CommentModelFilterFailure();
}

// ids
class CommentModelFilterInvalidIdsFailure extends CommentModelFilterFailure {
  const CommentModelFilterInvalidIdsFailure();
}

// userId
class CommentModelFilterInvalidUserIdFailure extends CommentModelFilterFailure {
  const CommentModelFilterInvalidUserIdFailure();
}

// targetId
class CommentModelFilterInvalidTargetIdFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidTargetIdFailure();
}

// commentType
class CommentModelFilterInvalidCommentTypeFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidCommentTypeFailure();
}

// status
class CommentModelFilterInvalidStatusFailure extends CommentModelFilterFailure {
  const CommentModelFilterInvalidStatusFailure();
}

// content
class CommentModelFilterInvalidContentFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidContentFailure();
}

// searchTerm
class CommentModelFilterInvalidSearchTermFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidSearchTermFailure();
}

// minRating
class CommentModelFilterInvalidMinRatingFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidMinRatingFailure();
}

// maxRating
class CommentModelFilterInvalidMaxRatingFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidMaxRatingFailure();
}

// ratingRange
class CommentModelFilterInvalidRatingRangeFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidRatingRangeFailure();
}

// createdAfter
class CommentModelFilterInvalidCreatedAfterFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidCreatedAfterFailure();
}

// createdBefore
class CommentModelFilterInvalidCreatedBeforeFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidCreatedBeforeFailure();
}

// limit
class CommentModelFilterInvalidLimitFailure extends CommentModelFilterFailure {
  const CommentModelFilterInvalidLimitFailure();
}

// offset
class CommentModelFilterInvalidOffsetFailure extends CommentModelFilterFailure {
  const CommentModelFilterInvalidOffsetFailure();
}

// orderBy
class CommentModelFilterInvalidOrderByFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidOrderByFailure();
}

// ascending
class CommentModelFilterInvalidAscendingFailure
    extends CommentModelFilterFailure {
  const CommentModelFilterInvalidAscendingFailure();
}

// empty
class CommentModelFilterEmptyFailure extends CommentModelFilterFailure {
  const CommentModelFilterEmptyFailure();
}
