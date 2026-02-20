abstract class DiscountEntityException implements Exception {
  final String message;

  const DiscountEntityException(this.message);

  @override
  String toString() => message;
}

// ------------------------------------------------------
// Required fields
// ------------------------------------------------------

class DiscountEntityPercentRequiredException extends DiscountEntityException {
  const DiscountEntityPercentRequiredException()
      : super('Discount percent is required');
}

class DiscountEntityUserRequiredException extends DiscountEntityException {
  const DiscountEntityUserRequiredException()
      : super('User id is required for discount');
}

// ------------------------------------------------------
// Id validations (entity-level relations)
// ------------------------------------------------------

class DiscountEntityIdInvalidException extends DiscountEntityException {
  const DiscountEntityIdInvalidException()
      : super('Discount id must be greater than 0');
}

class DiscountEntityUserIdInvalidException extends DiscountEntityException {
  const DiscountEntityUserIdInvalidException()
      : super('User id must be greater than 0');
}

class DiscountEntityCategoryInvalidException extends DiscountEntityException {
  const DiscountEntityCategoryInvalidException()
      : super('Category id must be greater than 0');
}

class DiscountEntityVideoIdInvalidException extends DiscountEntityException {
  const DiscountEntityVideoIdInvalidException()
      : super('Video id must be greater than 0');
}

// ------------------------------------------------------
// Percent validation
// ------------------------------------------------------

class DiscountEntityPercentInvalidException extends DiscountEntityException {
  const DiscountEntityPercentInvalidException()
      : super('Discount percent must be between 1 and 100');
}

// ------------------------------------------------------
// Usage validations
// ------------------------------------------------------

class DiscountEntityMaxUseInvalidException extends DiscountEntityException {
  const DiscountEntityMaxUseInvalidException()
      : super('Max use must be greater than 0');
}

class DiscountEntityUsageInvalidException extends DiscountEntityException {
  const DiscountEntityUsageInvalidException()
      : super('Usage must be zero or greater');
}

class DiscountEntityUsageGreaterThanMaxException
    extends DiscountEntityException {
  const DiscountEntityUsageGreaterThanMaxException()
      : super('Usage cannot be greater than max use');
}

// ------------------------------------------------------
// Status validation
// ------------------------------------------------------

class DiscountEntityStatusInvalidException extends DiscountEntityException {
  const DiscountEntityStatusInvalidException()
      : super('Discount status is invalid');
}

// ------------------------------------------------------
// Expiration / business constraints
// ------------------------------------------------------

class DiscountEntityExpiredException extends DiscountEntityException {
  const DiscountEntityExpiredException() : super('Discount is expired');
}

class DiscountEntityInactiveException extends DiscountEntityException {
  const DiscountEntityInactiveException() : super('Discount is inactive');
}

/// ------------------------------------------------------
/// Update / mutation guards
/// ------------------------------------------------------

class DiscountEntityNoUpdatableFieldsException extends DiscountEntityException {
  const DiscountEntityNoUpdatableFieldsException()
      : super(
          'No updatable fields provided for discount update',
        );
}
