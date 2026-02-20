abstract class CommentIdException implements Exception {
  final String message;

  const CommentIdException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Invalid / missing id
/// ------------------------------------------------------

class CommentIdRequiredException extends CommentIdException {
  const CommentIdRequiredException()
      : super(message: 'Comment id is required');
}

class CommentIdInvalidException extends CommentIdException {
  const CommentIdInvalidException()
      : super(message: 'Comment id must be greater than 0');
}
