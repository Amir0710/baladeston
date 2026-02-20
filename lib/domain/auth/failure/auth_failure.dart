abstract class AuthFailure {
  final String message;
  const AuthFailure(this.message);
}

class NetworkFailure extends AuthFailure {
  const NetworkFailure([String? message]):super(message ?? 'عدم دسترسی به اینترنت') ;
}

class UserNotFoundFailure extends AuthFailure {
  const UserNotFoundFailure([String? message]) : super(message ?? 'User not found');
}

class UnauthorizedFailure extends AuthFailure {
  const UnauthorizedFailure([String? message]) : super(message ?? 'Unauthorized');
}

class UnknownFailure extends AuthFailure {
  const UnknownFailure([String? message]) : super(message ?? 'Unknown error');
}

class InvalidPhoneFailure extends AuthFailure {
  const InvalidPhoneFailure([String? message]) : super(message ?? 'Invalid phone number');
}

class InvalidPasswordFailure extends AuthFailure {
  const InvalidPasswordFailure([String? message]) : super(message ?? 'Invalid password');
}

class AuthValidationFailure extends AuthFailure {
  const AuthValidationFailure([String? message]) : super(message ?? 'Invalid VerificationEntity');
}