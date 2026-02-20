abstract class UserFilterException implements Exception {
  final String message;

  const UserFilterException({required this.message});

  @override
  String toString() => message;
}

class UserFilterLimitException extends UserFilterException {
  const UserFilterLimitException()
      : super(message: 'Limit must be greater than 0');
}

class UserFilterOffsetException extends UserFilterException {
  const UserFilterOffsetException()
      : super(message: 'Offset must be non-negative');
}

class UserFilterRoleException extends UserFilterException {
  const UserFilterRoleException()
      : super(message: 'Invalid user role filter');
}

class UserFilterEmptyException extends UserFilterException {
  const UserFilterEmptyException()
      : super(
    message:
    'No filter applied: refusing to bulk delete/update without guard',
  );
}
