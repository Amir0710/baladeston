import 'package:baladeston/data/comment/api/error_codes/comment/comment_model_error_code.dart'
as codes;
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/server/code/comment_model_failure.dart';

final class CommentModelCodeMapper {
  const CommentModelCodeMapper();

  static final Map<String, CommentFailure Function()> _registry = {
    // userId
    codes.CommentModelErrorCodes.invalidUserId: () =>
    const CommentModelInvalidUserIdFailure(),
    codes.CommentModelErrorCodes.missingUserId: () =>
    const CommentModelMissingFieldFailure(field: 'userId'),

    // targetType
    codes.CommentModelErrorCodes.invalidTargetType: () =>
    const CommentModelInvalidTargetTypeFailure(),
    codes.CommentModelErrorCodes.missingTargetType: () =>
    const CommentModelMissingFieldFailure(field: 'targetType'),

    // targetId
    codes.CommentModelErrorCodes.invalidTargetId: () =>
    const CommentModelInvalidTargetIdFailure(),
    codes.CommentModelErrorCodes.missingTargetId: () =>
    const CommentModelMissingFieldFailure(field: 'targetId'),

    // rating
    codes.CommentModelErrorCodes.invalidRating: () =>
    const CommentModelInvalidRatingFailure(),
    codes.CommentModelErrorCodes.missingRating: () =>
    const CommentModelMissingFieldFailure(field: 'rating'),

    // content
    codes.CommentModelErrorCodes.invalidContent: () =>
    const CommentModelInvalidContentFailure(),
    codes.CommentModelErrorCodes.emptyContent: () =>
    const CommentModelInvalidContentFailure(),
    codes.CommentModelErrorCodes.contentTooShort: () =>
    const CommentModelInvalidContentFailure(),
    codes.CommentModelErrorCodes.contentTooLong: () =>
    const CommentModelInvalidContentFailure(),

    // avgRate
    codes.CommentModelErrorCodes.invalidAvgRate: () =>
    const CommentModelInvalidAvgRateFailure(),

    // rateCount
    codes.CommentModelErrorCodes.invalidRateCount: () =>
    const CommentModelInvalidRateCountFailure(),

    // status
    codes.CommentModelErrorCodes.invalidStatus: () =>
    const CommentModelInvalidStatusFailure(),

    // createdAt
    codes.CommentModelErrorCodes.invalidCreatedAt: () =>
    const CommentModelInvalidCreatedAtFailure(),

    // updatedAt
    codes.CommentModelErrorCodes.invalidUpdatedAt: () =>
    const CommentModelInvalidUpdatedAtFailure(),
    codes.CommentModelErrorCodes.updateBeforeCreation: () =>
    const CommentModelInvalidUpdatedAtFailure(),
  };

  static CommentFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
