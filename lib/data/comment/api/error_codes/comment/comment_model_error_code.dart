abstract final class CommentModelErrorCodes {
  // userId
  static const invalidUserId = 'COMMENT_INVALID_USER_ID';
  static const missingUserId = 'COMMENT_MISSING_USER_ID';

  // targetType
  static const invalidTargetType = 'COMMENT_INVALID_TARGET_TYPE';
  static const missingTargetType = 'COMMENT_MISSING_TARGET_TYPE';

  // targetId
  static const invalidTargetId = 'COMMENT_INVALID_TARGET_ID';
  static const missingTargetId = 'COMMENT_MISSING_TARGET_ID';

  // rating
  static const invalidRating = 'COMMENT_INVALID_RATING';
  static const missingRating = 'COMMENT_MISSING_RATING';

  // content
  static const invalidContent = 'COMMENT_INVALID_CONTENT';
  static const emptyContent = 'COMMENT_EMPTY_CONTENT';
  static const contentTooShort = 'COMMENT_CONTENT_TOO_SHORT';
  static const contentTooLong = 'COMMENT_CONTENT_TOO_LONG';

  // avgRate
  static const invalidAvgRate = 'COMMENT_INVALID_AVG_RATE';

  // rateCount
  static const invalidRateCount = 'COMMENT_INVALID_RATE_COUNT';

  // dates
  static const invalidCreatedAt = 'COMMENT_INVALID_CREATED_AT';
  static const invalidUpdatedAt = 'COMMENT_INVALID_UPDATED_AT';
  static const updateBeforeCreation = 'COMMENT_UPDATE_BEFORE_CREATION';

  // status
  static const invalidStatus = 'COMMENT_INVALID_STATUS';
}
