import 'date_exception.dart';

class CacheException extends DataException {
  const CacheException({
    super.message = 'Cache error',
    super.cause,
  });
}
