abstract class CategoryEntityException implements Exception {
  final String message;

  const CategoryEntityException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Required field validations
/// ------------------------------------------------------

class CategoryTitleEmptyException extends CategoryEntityException {
  const CategoryTitleEmptyException()
      : super(message: 'Category title must not be empty');
}

class CategoryOwnerRequiredException extends CategoryEntityException {
  const CategoryOwnerRequiredException()
      : super(message: 'OwnerId is required');
}

/// ------------------------------------------------------
/// Value & format validations
/// ------------------------------------------------------

class CategoryIdInvalidException extends CategoryEntityException {
  const CategoryIdInvalidException()
      : super(message: 'Category id must be greater than 0');
}

class CategoryTitleTooShortException extends CategoryEntityException {
  const CategoryTitleTooShortException()
      : super(message: 'Category title is too short');
}

class CategoryTitleTooLongException extends CategoryEntityException {
  const CategoryTitleTooLongException()
      : super(message: 'Category title is too long');
}

class CategoryStatusInvalidException extends CategoryEntityException {
  const CategoryStatusInvalidException()
      : super(message: 'Invalid category status');
}

/// ------------------------------------------------------
/// Security & business constraints
/// ------------------------------------------------------

class CategoryPasswordInvalidException extends CategoryEntityException {
  const CategoryPasswordInvalidException()
      : super(message: 'Category password is not valid');
}

class CategoryThumbnailInvalidException extends CategoryEntityException {
  const CategoryThumbnailInvalidException()
      : super(message: 'Invalid thumbnail url');
}

/// ------------------------------------------------------
/// Update / Partial update specific
/// ------------------------------------------------------

class CategoryNoUpdatableFieldsException extends CategoryEntityException {
  const CategoryNoUpdatableFieldsException()
      : super(message: 'No updatable fields provided');
}
