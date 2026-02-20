abstract class CollectionFilterException implements Exception {
  final String message;
  const CollectionFilterException({required this.message});

  @override
  String toString() => message;
}

class CollectionFilterLimitException extends CollectionFilterException {
  const CollectionFilterLimitException()
      : super(message: "Limit must be greater than 0");
}

class CollectionFilterOffsetException extends CollectionFilterException {
  const CollectionFilterOffsetException()
      : super(message: "Offset must be non-negative");
}

class CollectionFilterMinMaxException extends CollectionFilterException {
  const CollectionFilterMinMaxException()
      : super(message: "minCount and maxCount are not valid");
}

class CollectionFilterOrderException extends CollectionFilterException {
  const CollectionFilterOrderException()
      : super(message: "Invalid order. Allowed values: name, createdAt, updatedAt");
}

class CollectionFilterOwnerException extends CollectionFilterException {
  const CollectionFilterOwnerException()
      : super(message: "OwnerId is required for this operation");
}

class CollectionFilterEmptyException extends CollectionFilterException {
  const CollectionFilterEmptyException()
      : super(message: "No filter applied: refusing to bulk delete/update without guard");
}

class CollectionFilterStatusException extends CollectionFilterException {
  const CollectionFilterStatusException()
      : super(message: "Invalid status value");
}

class CollectionFilterSearchException extends CollectionFilterException {
  const CollectionFilterSearchException()
      : super(message: "SearchTerm and SearchId cannot be used simultaneously");
}

class CollectionFilterIdException extends CollectionFilterException {
  const CollectionFilterIdException()
      : super(message: "ID must be greater than 0");
}