abstract class UserEntityException implements Exception {
  final String message;

  const UserEntityException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Required field validations
/// ------------------------------------------------------

class UserNameEmptyException extends UserEntityException {
  const UserNameEmptyException()
      : super(message: 'User name must not be empty');
}

class UserPhoneRequiredException extends UserEntityException {
  const UserPhoneRequiredException()
      : super(message: 'User phone is required');
}

/// ------------------------------------------------------
/// Value & format validations
/// ------------------------------------------------------

class UserPhoneInvalidException extends UserEntityException {
  const UserPhoneInvalidException()
      : super(message: 'Invalid phone number format');
}

class UserEmailInvalidException extends UserEntityException {
  const UserEmailInvalidException()
      : super(message: 'Invalid email format');
}

class UserStatusInvalidException extends UserEntityException {
  const UserStatusInvalidException()
      : super(message: 'Invalid user status');
}

/// ------------------------------------------------------
/// Security & business constraints
/// ------------------------------------------------------

class UserVerificationRequiredException extends UserEntityException {
  const UserVerificationRequiredException()
      : super(message: 'User verification is required');
}

/// ------------------------------------------------------
/// Update / Partial update specific
/// ------------------------------------------------------

class UserNoUpdatableFieldsException extends UserEntityException {
  const UserNoUpdatableFieldsException()
      : super(message: 'No updatable fields provided');
}
