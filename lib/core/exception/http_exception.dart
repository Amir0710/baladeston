import 'package:baladeston/core/exception/date_exception.dart';

class UnauthorizedException extends DataException {
  const UnauthorizedException()
      : super(message: 'Unauthorized', statusCode: 401);
}

class ForbiddenException extends DataException {
  const ForbiddenException()
      : super(message: 'Forbidden', statusCode: 403);
}

class NotFoundException extends DataException {
  const NotFoundException()
      : super(message: 'Not found', statusCode: 404);
}

class ServerException extends DataException {
  const ServerException()
      : super(message: 'Server error', statusCode: 500);
}
