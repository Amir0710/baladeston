abstract class CategoryFilterException implements Exception {
  final String message;
  const CategoryFilterException({required this.message});

  @override
  String toString() => message;
}


class FilterLimitException extends CategoryFilterException {
  const FilterLimitException() : super(message: "Limit must be greater than 0");
}

class FilterOffsetException extends CategoryFilterException {
  const FilterOffsetException() : super(message: "Offset must be non-negative");
}

class FilterMinMaxException extends CategoryFilterException {
  const FilterMinMaxException() : super(message: "minCount and maxCount are not valid");
}

class FilterOrderException extends CategoryFilterException {
  const FilterOrderException() : super(message: "Invalid order. Allowed values: name, createdAt");
}

class FilterOwnerException extends CategoryFilterException {
  const FilterOwnerException() : super(message: "OwnerId is required for this operation");
}

class FilterEmptyException extends CategoryFilterException {
  const FilterEmptyException() : super(message: "No filter applied: refusing to bulk delete/update without guard");
}

