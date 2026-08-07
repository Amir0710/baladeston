import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/infrastructure/category_infrastructure_failure.dart';

class CategoryInfrastructureCodeMapper {
  const CategoryInfrastructureCodeMapper();

  static final Map<String, CategoryFailure Function()> _codeMap = {
    "NETWORK_ERROR": () => const CategoryNetworkFailure(),
    "TIMEOUT": () => const CategoryTimeoutFailure(),
    "SERVER_ERROR": () => const CategoryServerFailure(),
    "SERVER_UNAVAILABLE": () => const CategoryServerUnavailableFailure(),
    "BAD_REQUEST": () => const CategoryBadRequestFailure(),
    "UNAUTHORIZED": () => const CategoryUnauthorizedInfrastructureFailure(),
    "FORBIDDEN": () => const CategoryForbiddenInfrastructureFailure(),
    "CONFLICT": () => const CategoryConflictFailure(),
    "RATE_LIMIT": () => const CategoryRateLimitFailure(),
    "INVALID_DATA": () => const CategoryInvalidDataFailure(),
  };

  static final Map<int, CategoryFailure Function()> _statusMap = {
    400: () => const CategoryBadRequestFailure(),
    401: () => const CategoryUnauthorizedInfrastructureFailure(),
    403: () => const CategoryForbiddenInfrastructureFailure(),
    409: () => const CategoryConflictFailure(),
    429: () => const CategoryRateLimitFailure(),
    500: () => const CategoryServerFailure(),
    502: () => const CategoryServerUnavailableFailure(),
    503: () => const CategoryServerUnavailableFailure(),
    504: () => const CategoryTimeoutFailure(),
  };

  static CategoryFailure? map({
    String? code,
    int? statusCode,
  }) {
    if (code != null) {
      final factory = _codeMap[code];
      if (factory != null) {
        return factory();
      }
    }

    if (statusCode != null) {
      final factory = _statusMap[statusCode];
      if (factory != null) {
        return factory();
      }
    }

    return null;
  }
}
