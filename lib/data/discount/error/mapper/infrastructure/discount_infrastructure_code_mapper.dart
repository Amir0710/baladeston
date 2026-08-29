import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/infrastructure/discount_infrastructure_failure.dart';

class DiscountInfrastructureCodeMapper {
  const DiscountInfrastructureCodeMapper();

  static final Map<String, DiscountFailure Function()> _codeMap = {
    "NETWORK_ERROR": () => const DiscountNetworkFailure(),
    "TIMEOUT": () => const DiscountTimeoutFailure(),
    "SERVER_ERROR": () => const DiscountServerFailure(),
    "SERVER_UNAVAILABLE": () => const DiscountServerUnavailableFailure(),
    "BAD_REQUEST": () => const DiscountBadRequestFailure(),
    "UNAUTHORIZED": () => const DiscountUnauthorizedInfrastructureFailure(),
    "FORBIDDEN": () => const DiscountForbiddenInfrastructureFailure(),
    "CONFLICT": () => const DiscountConflictFailure(),
    "RATE_LIMIT": () => const DiscountRateLimitFailure(),
    "INVALID_DATA": () => const DiscountInvalidDataFailure(),
  };

  static final Map<int, DiscountFailure Function()> _statusMap = {
    400: () => const DiscountBadRequestFailure(),
    401: () => const DiscountUnauthorizedInfrastructureFailure(),
    403: () => const DiscountForbiddenInfrastructureFailure(),
    409: () => const DiscountConflictFailure(),
    429: () => const DiscountRateLimitFailure(),
    500: () => const DiscountServerFailure(),
    502: () => const DiscountServerUnavailableFailure(),
    503: () => const DiscountServerUnavailableFailure(),
    504: () => const DiscountTimeoutFailure(),
  };

  static DiscountFailure? map({
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
