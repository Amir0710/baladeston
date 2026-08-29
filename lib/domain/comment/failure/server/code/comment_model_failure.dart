import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentModelFailure
    extends BaseCommentServerValidationFailure {
  const CommentModelFailure();
}

// userId
class CommentModelInvalidUserIdFailure extends CommentModelFailure {
  const CommentModelInvalidUserIdFailure();
}

// targetType
class CommentModelInvalidTargetTypeFailure extends CommentModelFailure {
  const CommentModelInvalidTargetTypeFailure();
}

// targetId
class CommentModelInvalidTargetIdFailure extends CommentModelFailure {
  const CommentModelInvalidTargetIdFailure();
}

// rating
class CommentModelInvalidRatingFailure extends CommentModelFailure {
  const CommentModelInvalidRatingFailure();
}

// content
class CommentModelInvalidContentFailure extends CommentModelFailure {
  const CommentModelInvalidContentFailure();
}

// avgRate
class CommentModelInvalidAvgRateFailure extends CommentModelFailure {
  const CommentModelInvalidAvgRateFailure();
}

// rateCount
class CommentModelInvalidRateCountFailure extends CommentModelFailure {
  const CommentModelInvalidRateCountFailure();
}

// status
class CommentModelInvalidStatusFailure extends CommentModelFailure {
  const CommentModelInvalidStatusFailure();
}

// createdAt
class CommentModelInvalidCreatedAtFailure extends CommentModelFailure {
  const CommentModelInvalidCreatedAtFailure();
}

// updatedAt
class CommentModelInvalidUpdatedAtFailure extends CommentModelFailure {
  const CommentModelInvalidUpdatedAtFailure();
}

// missing
class CommentModelMissingFieldFailure extends CommentModelFailure {
  final String field;
  const CommentModelMissingFieldFailure({required this.field});
}
