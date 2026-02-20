abstract class CollectionEntityException implements Exception {
  final String message;

  const CollectionEntityException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Required field validations
/// ------------------------------------------------------

class CollectionEntityTitleEmptyException extends CollectionEntityException {
  const CollectionEntityTitleEmptyException()
      : super(message: 'Collection title must not be empty');
}

class CollectionEntityPasswordEmptyException extends CollectionEntityException {
  const CollectionEntityPasswordEmptyException()
      : super(message: 'Collection password must not be empty');
}

class CollectionEntityOwnerRequiredException extends CollectionEntityException {
  const CollectionEntityOwnerRequiredException()
      : super(message: 'OwnerId is required');
}

class CollectionEntityCreatedAtRequiredException extends CollectionEntityException {
  const CollectionEntityCreatedAtRequiredException()
      : super(message: 'CreatedAt is required');
}

class CollectionEntityLastTransactionRequiredException extends CollectionEntityException {
  const CollectionEntityLastTransactionRequiredException()
      : super(message: 'Last transaction date is required');
}

/// ------------------------------------------------------
/// Value & format validations
/// ------------------------------------------------------

class CollectionEntityIdInvalidException extends CollectionEntityException {
  const CollectionEntityIdInvalidException()
      : super(message: 'Collection id must be greater than 0');
}

class CollectionEntityOwnerIdInvalidException extends CollectionEntityException {
  const CollectionEntityOwnerIdInvalidException()
      : super(message: 'OwnerId must be greater than 0');
}

class CollectionEntityTitleTooShortException extends CollectionEntityException {
  const CollectionEntityTitleTooShortException()
      : super(message: 'Collection title is too short');
}

class CollectionEntityTitleTooLongException extends CollectionEntityException {
  const CollectionEntityTitleTooLongException()
      : super(message: 'Collection title is too long');
}

class CollectionEntityStatusInvalidException extends CollectionEntityException {
  const CollectionEntityStatusInvalidException()
      : super(message: 'Invalid collection status');
}

class CollectionEntityThumbnailInvalidException extends CollectionEntityException {
  const CollectionEntityThumbnailInvalidException()
      : super(message: 'Invalid thumbnail url');
}

/// ------------------------------------------------------
/// Security & business constraints
/// ------------------------------------------------------

class CollectionEntityPasswordInvalidException extends CollectionEntityException {
  const CollectionEntityPasswordInvalidException()
      : super(message: 'Collection password is not valid');
}

class CollectionEntityLastTransactionInvalidException extends CollectionEntityException {
  const CollectionEntityLastTransactionInvalidException()
      : super(
    message:
    'Last transaction date cannot be before created date',
  );
}

/// ------------------------------------------------------
/// Update / Partial update specific
/// ------------------------------------------------------

class CollectionEntityNoUpdatableFieldsException extends CollectionEntityException {
  const CollectionEntityNoUpdatableFieldsException()
      : super(message: 'No updatable fields provided');
}
