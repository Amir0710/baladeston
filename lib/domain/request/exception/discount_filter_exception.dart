abstract class DiscountFilterException implements Exception {
  final String message;

  const DiscountFilterException({required this.message});

  @override
  String toString() => message;
}

// ------------------------------------------------------
// Pagination
// ------------------------------------------------------

class DiscountFilterLimitException extends DiscountFilterException {
  const DiscountFilterLimitException()
      : super(message: 'Limit must be greater than 0');
}

class DiscountFilterOffsetException extends DiscountFilterException {
  const DiscountFilterOffsetException()
      : super(message: 'Offset must be non-negative');
}

// ------------------------------------------------------
// Id validations
// ------------------------------------------------------

class DiscountFilterInvalidIdException extends DiscountFilterException {
  const DiscountFilterInvalidIdException()
      : super(message: 'Id must be greater than 0');
}

// ------------------------------------------------------
// Percent validations
// ------------------------------------------------------

class DiscountFilterPercentInvalidException
    extends DiscountFilterException {
  const DiscountFilterPercentInvalidException()
      : super(message: 'Percent must be between 1 and 100');
}

class DiscountFilterPercentRangeInvalidException
    extends DiscountFilterException {
  const DiscountFilterPercentRangeInvalidException()
      : super(
    message: 'Min percent cannot be greater than max percent',
  );
}

// ------------------------------------------------------
// Status
// ------------------------------------------------------

class DiscountFilterStatusInvalidException
    extends DiscountFilterException {
  const DiscountFilterStatusInvalidException()
      : super(message: 'Invalid discount status filter');
}

// ------------------------------------------------------
// Business guard
// ------------------------------------------------------

class DiscountFilterEmptyException extends DiscountFilterException {
  const DiscountFilterEmptyException()
      : super(
    message:
    'No filter applied: refusing delete operation without guard',
  );
}
