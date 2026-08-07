import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentEntityFailure extends BaseCommentValidationFailure {
  const CommentEntityFailure();
}

// userId
final class CommentEntityInvalidUserIdFailure extends CommentEntityFailure {
  const CommentEntityInvalidUserIdFailure();
}
final class CommentEntityMissingUserIdFailure extends CommentEntityFailure {
  const CommentEntityMissingUserIdFailure();
}

// targetType
final class CommentEntityInvalidTargetTypeFailure extends CommentEntityFailure {
  const CommentEntityInvalidTargetTypeFailure();
}
final class CommentEntityMissingTargetTypeFailure extends CommentEntityFailure {
  const CommentEntityMissingTargetTypeFailure();
}

// targetId
final class CommentEntityInvalidTargetIdFailure extends CommentEntityFailure {
  const CommentEntityInvalidTargetIdFailure();
}
final class CommentEntityMissingTargetIdFailure extends CommentEntityFailure {
  const CommentEntityMissingTargetIdFailure();
}

// rating
final class CommentEntityInvalidRatingFailure extends CommentEntityFailure {
  const CommentEntityInvalidRatingFailure();
}
final class CommentEntityMissingRatingFailure extends CommentEntityFailure {
  const CommentEntityMissingRatingFailure();
}

// content
final class CommentEntityInvalidContentFailure extends CommentEntityFailure {
  const CommentEntityInvalidContentFailure();
}

// status
final class CommentEntityInvalidStatusFailure extends CommentEntityFailure {
  const CommentEntityInvalidStatusFailure();
}

// createdAt
final class CommentEntityInvalidCreatedAtFailure extends CommentEntityFailure {
  const CommentEntityInvalidCreatedAtFailure();
}

// updatedAt
final class CommentEntityInvalidUpdatedAtFailure extends CommentEntityFailure {
  const CommentEntityInvalidUpdatedAtFailure();
}
