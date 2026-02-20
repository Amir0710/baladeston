abstract class CollectionIdException implements Exception {
  final String message;

  const CollectionIdException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Invalid / missing id
/// ------------------------------------------------------

class CollectionIdRequiredException extends CollectionIdException {
  const CollectionIdRequiredException()
      : super(message: 'Collection id is required');
}

class CollectionIdInvalidException extends CollectionIdException {
  const CollectionIdInvalidException()
      : super(message: 'Collection id must be greater than 0');
}
