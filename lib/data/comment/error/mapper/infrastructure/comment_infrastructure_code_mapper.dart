import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/infrastructure/comment_infrastructure_failure.dart';

class CommentInfrastructureCodeMapper {
  const CommentInfrastructureCodeMapper();

  static final Map<String, CommentFailure Function()> _codeMap = {
    "NETWORK_ERROR": () => const CommentNetworkFailure(),
    "TIMEOUT": () => const CommentTimeoutFailure(),
    "SERVER_ERROR": () => const CommentServerFailure(),
    "SERVER_UNAVAILABLE": () => const CommentServerUnavailableFailure(),
    "BAD_REQUEST": () => const CommentBadRequestFailure(),
    "UNAUTHORIZED": () => const CommentUnauthorizedInfrastructureFailure(),
    "FORBIDDEN": () => const CommentForbiddenInfrastructureFailure(),
    "CONFLICT": () => const CommentConflictFailure(),
    "RATE_LIMIT": () => const CommentRateLimitFailure(),
  };

  static final Map<int, CommentFailure Function()> _statusMap = {
    400: () => const CommentBadRequestFailure(),
    401: () => const CommentUnauthorizedInfrastructureFailure(),
    403: () => const CommentForbiddenInfrastructureFailure(),
    409: () => const CommentConflictFailure(),
    429: () => const CommentRateLimitFailure(),
    500: () => const CommentServerFailure(),
    502: () => const CommentServerUnavailableFailure(),
    503: () => const CommentServerUnavailableFailure(),
    504: () => const CommentTimeoutFailure(),
  };

  static CommentFailure? map({
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
