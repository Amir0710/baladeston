abstract class FavoriteFilterException implements Exception {
  final String message;
  const FavoriteFilterException({required this.message});

  @override
  String toString() => message;
}

class FilterLimitException extends FavoriteFilterException {
  const FilterLimitException()
      : super(message: "Limit must be greater than 0");
}

class FilterOffsetException extends FavoriteFilterException {
  const FilterOffsetException()
      : super(message: "Offset must be non-negative");
}

class FilterMinMaxException extends FavoriteFilterException {
  const FilterMinMaxException()
      : super(message: "minCount and maxCount are not valid");
}

class FilterOrderException extends FavoriteFilterException {
  const FilterOrderException()
      : super(
    message:
    "Invalid order. Allowed values: createdAt",
  );
}

class FilterOwnerException extends FavoriteFilterException {
  const FilterOwnerException()
      : super(message: "OwnerId is required for this operation");
}

class FilterEmptyException extends FavoriteFilterException {
  const FilterEmptyException()
      : super(
    message:
    "No filter applied: refusing to bulk delete/update without guard",
  );
}
