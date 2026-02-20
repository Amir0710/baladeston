import 'package:baladeston/core/constants/limits.dart';

final Limits limits = Limits();

abstract class UserAvatarException implements Exception {
  final String message;

  const UserAvatarException(this.message);

  @override
  String toString() => message;
}

class AvatarTooLargeException extends UserAvatarException {
  AvatarTooLargeException()
      : super("Avatar size exceeds ${limits.maxCategoryImageSize}MB limit");
}

class InvalidAvatarFormatException extends UserAvatarException {
  InvalidAvatarFormatException()
      : super('Invalid avatar format. Allowed formats: jpg, jpeg, png, webp');
}

class InvalidAvatarUserIdException extends UserAvatarException {
  InvalidAvatarUserIdException()
      : super('Invalid user id. Id must be greater than 0');
}
