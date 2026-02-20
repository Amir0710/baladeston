/// Domain-level exceptions for Category ID validation
abstract class CategoryIdException implements Exception {
  final String message;

  const CategoryIdException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Invalid / missing id
/// ------------------------------------------------------

class CategoryIdRequiredException extends CategoryIdException {
  const CategoryIdRequiredException()
      : super(message: 'Category id is required');
}

class CategoryIdInvalidException extends CategoryIdException {
  const CategoryIdInvalidException()
      : super(message: 'Category id must be greater than 0');
}
