  import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/infrastructure/collection_infrastructure_failure.dart';

  class CollectionInfrastructureCodeMapper {
    const CollectionInfrastructureCodeMapper();

    static final Map<String, CollectionFailure Function()> _codeMap = {

      "NETWORK_ERROR": () => const CollectionNetworkFailure(),
      "TIMEOUT": () => const CollectionTimeoutFailure(),
      "SERVER_ERROR": () => const CollectionServerFailure(),
      "SERVER_UNAVAILABLE": () => const CollectionServerUnavailableFailure(),
      "BAD_REQUEST": () => const CollectionBadRequestFailure(),
      "UNAUTHORIZED": () => const CollectionUnauthorizedInfrastructureFailure(),
      "FORBIDDEN": () => const CollectionForbiddenInfrastructureFailure(),
      "CONFLICT": () => const CollectionConflictFailure(),
      "RATE_LIMIT": () => const CollectionRateLimitFailure(),
      "INVALID_DATA": () => const CollectionInvalidDataFailure(),
    };

    static final Map<int, CollectionFailure Function()> _statusMap = {
      400: () => const CollectionBadRequestFailure(),
      401: () => const CollectionUnauthorizedInfrastructureFailure(),
      403: () => const CollectionForbiddenInfrastructureFailure(),
      409: () => const CollectionConflictFailure(),
      429: () => const CollectionRateLimitFailure(),
      500: () => const CollectionServerFailure(),
      502: () => const CollectionServerUnavailableFailure(),
      503: () => const CollectionServerUnavailableFailure(),
      504: () => const CollectionTimeoutFailure(),
    };

    static CollectionFailure? map({
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
