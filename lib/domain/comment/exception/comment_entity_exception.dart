abstract class CommentEntityException implements Exception {
  final String message;

  const CommentEntityException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Required field validations
/// ------------------------------------------------------

class CommentEntityUserRequiredException extends CommentEntityException {
  const CommentEntityUserRequiredException()
      : super(message: 'UserId is required');
}

class CommentEntityTargetRequiredException extends CommentEntityException {
  const CommentEntityTargetRequiredException()
      : super(message: 'TargetId is required');
}

class CommentEntityContentRequiredException extends CommentEntityException {
  const CommentEntityContentRequiredException()
      : super(message: 'Comment content must not be empty');
}

class CommentEntityRatingRequiredException extends CommentEntityException {
  const CommentEntityRatingRequiredException()
      : super(message: 'Rating is required');
}

class CommentEntityCreatedAtRequiredException extends CommentEntityException {
  const CommentEntityCreatedAtRequiredException()
      : super(message: 'CreatedAt is required');
}

class CommentEntityUpdatedAtRequiredException extends CommentEntityException {
  const CommentEntityUpdatedAtRequiredException()
      : super(message: 'UpdatedAt is required');
}

/// ------------------------------------------------------
/// Value & format validations
/// ------------------------------------------------------

class CommentEntityUserIdInvalidException extends CommentEntityException {
  const CommentEntityUserIdInvalidException()
      : super(message: 'UserId must be greater than 0');
}

class CommentEntityTargetIdInvalidException extends CommentEntityException {
  const CommentEntityTargetIdInvalidException()
      : super(message: 'TargetId must be greater than 0');
}

class CommentEntityContentTooShortException extends CommentEntityException {
  const CommentEntityContentTooShortException()
      : super(message: 'Comment content is too short');
}

class CommentEntityContentTooLongException extends CommentEntityException {
  const CommentEntityContentTooLongException()
      : super(message: 'Comment content is too long');
}

class CommentEntityRatingInvalidException extends CommentEntityException {
  const CommentEntityRatingInvalidException()
      : super(message: 'Rating must be between 0 and 5');
}

/// ------------------------------------------------------
/// Business constraints
/// ------------------------------------------------------

class CommentEntityUpdateBeforeCreateException extends CommentEntityException {
  const CommentEntityUpdateBeforeCreateException()
      : super(
    message:
    'UpdatedAt cannot be earlier than CreatedAt',
  );
}

class CommentEntitySelfTargetingException extends CommentEntityException {
  const CommentEntitySelfTargetingException()
      : super(
    message:
    'User cannot comment on their own target',
  );
}

/// ------------------------------------------------------
/// Update / Partial update specific
/// ------------------------------------------------------

class CommentEntityNoUpdatableFieldsException
    extends CommentEntityException {
  const CommentEntityNoUpdatableFieldsException()
      : super(message: 'No updatable fields provided');
}
