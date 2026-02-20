import 'package:baladeston/core/exception/date_exception.dart';

class NetworkException extends DataException {
  const NetworkException({super.cause})
      : super(message: 'Network error');
}

class TimeoutException extends DataException {
  const TimeoutException()
      : super(message: 'Request timeout');
}
