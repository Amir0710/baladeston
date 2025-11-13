/// همه‌ی Exceptionهای منطقی اپ در این فایل تعریف می‌شن.
/// مبناش AppException ـه تا بتونی راحت handleشون کنی.

abstract class AppException implements Exception {
  final String message;
  AppException(this.message);

  @override
  String toString() => message;
}

/// BAD REQUEST → 400
class BadRequestException extends AppException {
  BadRequestException(String message) : super(message);
}

/// UNAUTHORIZED → 401
class UnauthorizedException extends AppException {
  UnauthorizedException(String message) : super(message);
}

/// FORBIDDEN → 403
class ForbiddenException extends AppException {
  ForbiddenException(String message) : super(message);
}

/// NOT FOUND → 404
class NotFoundException extends AppException {
  NotFoundException(String message) : super(message);
}

/// CONFLICT → 409
class ConflictException extends AppException {
  ConflictException(String message) : super(message);
}

/// UNPROCESSABLE ENTITY → 422
class UnprocessableEntityException extends AppException {
  UnprocessableEntityException(String message) : super(message);
}

/// SERVER ERROR → 500+
class ServerException extends AppException {
  ServerException(String message) : super(message);
}
