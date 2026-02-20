abstract class CommentFilterException implements Exception {
  final String message;
  const CommentFilterException({required this.message});

  @override
  String toString() => message;
}

class CommentFilterLimitException extends CommentFilterException {
  const CommentFilterLimitException()
      : super(message: "Limit must be greater than 0");
}

class CommentFilterOffsetException extends CommentFilterException {
  const CommentFilterOffsetException()
      : super(message: "Offset must be non-negative");
}

class CommentFilterMinMaxException extends CommentFilterException {
  const CommentFilterMinMaxException()
      : super(message: "minCount and maxCount are not valid");
}

class CommentFilterOrderException extends CommentFilterException {
  const CommentFilterOrderException()
      : super(message: "Invalid order. Allowed values: name, createdAt, updatedAt");
}

class CommentFilterOwnerException extends CommentFilterException {
  const CommentFilterOwnerException()
      : super(message: "OwnerId is required for this operation");
}

class CommentFilterEmptyException extends CommentFilterException {
  const CommentFilterEmptyException()
      : super(message: "No filter applied: refusing to bulk delete/update without guard");
}

class CommentFilterStatusException extends CommentFilterException {
  const CommentFilterStatusException()
      : super(message: "Invalid status value");
}

class CommentFilterSearchException extends CommentFilterException {
  const CommentFilterSearchException()
      : super(message: "SearchTerm and SearchId cannot be used simultaneously");
}

class CommentFilterIdException extends CommentFilterException {
  const CommentFilterIdException()
      : super(message: "ID must be greater than 0");
}