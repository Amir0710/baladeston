abstract class UserAvatarUrlException implements Exception {
  final String message;

  const UserAvatarUrlException(this.message);

  @override
  String toString() => message;
}

class EmptyAvatarUrlException extends UserAvatarUrlException {
  EmptyAvatarUrlException()
      : super('Avatar URL cannot be empty');
}

class InvalidAvatarUrlFormatException extends UserAvatarUrlException {
  InvalidAvatarUrlFormatException()
      : super('Invalid avatar URL format');
}

class UnsupportedAvatarUrlSchemeException
    extends UserAvatarUrlException {
  UnsupportedAvatarUrlSchemeException()
      : super('Avatar URL must use http or https scheme');
}

class UnauthorizedAvatarHostException
    extends UserAvatarUrlException {
  UnauthorizedAvatarHostException()
      : super('Avatar URL host is not allowed');
}

class InvalidAvatarUrlUserIdException extends UserAvatarUrlException {
  InvalidAvatarUrlUserIdException()
      : super('Invalid user id. Id must be greater than 0');
}
