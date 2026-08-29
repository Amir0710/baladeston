import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/infrastructure/favorite_infrastructure_failure.dart';

class FavoriteInfrastructureCodeMapper {
  const FavoriteInfrastructureCodeMapper();

  static final Map<String, FavoriteFailure Function()> _codeMap = {
    "NETWORK_ERROR": () => const FavoriteNetworkFailure(),
    "TIMEOUT": () => const FavoriteTimeoutFailure(),
    "SERVER_ERROR": () => const FavoriteServerFailure(),
    "SERVER_UNAVAILABLE": () => const FavoriteServerUnavailableFailure(),
    "BAD_REQUEST": () => const FavoriteBadRequestFailure(),
    "UNAUTHORIZED": () => const FavoriteUnauthorizedInfrastructureFailure(),
    "FORBIDDEN": () => const FavoriteForbiddenInfrastructureFailure(),
    "CONFLICT": () => const FavoriteConflictFailure(),
    "RATE_LIMIT": () => const FavoriteRateLimitFailure(),
    "INVALID_DATA": () => const FavoriteInvalidDataFailure(),
  };

  static final Map<int, FavoriteFailure Function()> _statusMap = {
    400: () => const FavoriteBadRequestFailure(),
    401: () => const FavoriteUnauthorizedInfrastructureFailure(),
    403: () => const FavoriteForbiddenInfrastructureFailure(),
    409: () => const FavoriteConflictFailure(),
    429: () => const FavoriteRateLimitFailure(),
    500: () => const FavoriteServerFailure(),
    502: () => const FavoriteServerUnavailableFailure(),
    503: () => const FavoriteServerUnavailableFailure(),
    504: () => const FavoriteTimeoutFailure(),
  };

  static FavoriteFailure? map({
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
