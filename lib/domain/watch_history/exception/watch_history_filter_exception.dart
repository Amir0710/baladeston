abstract class WatchHistoryFilterException implements Exception {
  final String message;
  const WatchHistoryFilterException({required this.message});

  @override
  String toString() => message;
}

class FilterLimitException extends WatchHistoryFilterException {
  const FilterLimitException()
      : super(message: "Limit must be greater than 0");
}

class FilterOffsetException extends WatchHistoryFilterException {
  const FilterOffsetException()
      : super(message: "Offset must be non-negative");
}

class FilterMinMaxException extends WatchHistoryFilterException {
  const FilterMinMaxException()
      : super(message: "minCount and maxCount are not valid");
}

class FilterOrderException extends WatchHistoryFilterException {
  const FilterOrderException()
      : super(
    message:
    "Invalid order. Allowed values: lastPosition, updatedAt",
  );
}

class FilterOwnerException extends WatchHistoryFilterException {
  const FilterOwnerException()
      : super(message: "UserId is required for this operation");
}

class FilterEmptyException extends WatchHistoryFilterException {
  const FilterEmptyException()
      : super(
    message:
    "No filter applied: refusing to bulk delete/update without guard",
  );
}
