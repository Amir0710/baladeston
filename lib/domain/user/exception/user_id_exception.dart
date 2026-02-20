abstract class UserIdException implements Exception {
  final String message;

  const UserIdException({required this.message});

  @override
  String toString() => message;
}

class UserIdRequiredException extends UserIdException {
  const UserIdRequiredException()
      : super(message: 'User id is required');
}

class UserIdInvalidException extends UserIdException {
  const UserIdInvalidException()
      : super(message: 'User id must be greater than 0');
}
