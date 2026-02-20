/// Domain-level exceptions for Favorite ID validation
abstract class FavoriteIdException implements Exception {
  final String message;

  const FavoriteIdException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Invalid / missing id
/// ------------------------------------------------------

class FavoriteIdRequiredException extends FavoriteIdException {
  const FavoriteIdRequiredException()
      : super(message: 'Favorite id is required');
}

class FavoriteIdInvalidException extends FavoriteIdException {
  const FavoriteIdInvalidException()
      : super(message: 'Favorite id must be greater than 0');
}
