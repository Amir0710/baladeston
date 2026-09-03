import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/infrastructure/reaction_infrastructure_failure.dart';

class ReactionInfrastructureCodeMapper {
  const ReactionInfrastructureCodeMapper();

  static final Map<String, ReactionFailure Function()> _codeMap = {
    "NETWORK_ERROR": () => const ReactionNetworkFailure(),
    "TIMEOUT": () => const ReactionTimeoutFailure(),
    "SERVER_ERROR": () => const ReactionServerFailure(),
    "SERVER_UNAVAILABLE": () => const ReactionServerUnavailableFailure(),
    "BAD_REQUEST": () => const ReactionBadRequestFailure(),
    "UNAUTHORIZED": () => const ReactionUnauthorizedInfrastructureFailure(),
    "FORBIDDEN": () => const ReactionForbiddenInfrastructureFailure(),
    "CONFLICT": () => const ReactionConflictFailure(),
    "RATE_LIMIT": () => const ReactionRateLimitFailure(),
    "INVALID_DATA": () => const ReactionInvalidDataFailure(),
  };

  static final Map<int, ReactionFailure Function()> _statusMap = {
    400: () => const ReactionBadRequestFailure(),
    401: () => const ReactionUnauthorizedInfrastructureFailure(),
    403: () => const ReactionForbiddenInfrastructureFailure(),
    409: () => const ReactionConflictFailure(),
    429: () => const ReactionRateLimitFailure(),
    500: () => const ReactionServerFailure(),
    502: () => const ReactionServerUnavailableFailure(),
    503: () => const ReactionServerUnavailableFailure(),
    504: () => const ReactionTimeoutFailure(),
  };

  static ReactionFailure? map({
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
