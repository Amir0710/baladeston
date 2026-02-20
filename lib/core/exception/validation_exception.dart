import 'package:baladeston/core/exception/date_exception.dart';

class RemoteValidationException extends DataException {
  const RemoteValidationException(String message)
      : super(message: message, statusCode: 422);
}
