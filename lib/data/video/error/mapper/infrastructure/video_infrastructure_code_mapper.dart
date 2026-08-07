import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/infrastructure/collection_infrastructure_failure.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/infrastructure/video_infrastructure_failure.dart';

class VideoInfrastructureCodeMapper {
  const VideoInfrastructureCodeMapper();

  static final Map<String, VideoFailure Function()> _codeMap = {
    "NETWORK_ERROR": () => const VideoNetworkFailure(),
    "TIMEOUT": () => const VideoTimeoutFailure(),
    "SERVER_ERROR": () => const VideoServerFailure(),
    "SERVER_UNAVAILABLE": () => const VideoServerUnavailableFailure(),
    "BAD_REQUEST": () => const VideoBadRequestFailure(),
    "UNAUTHORIZED": () => const VideoUnauthorizedInfrastructureFailure(),
    "FORBIDDEN": () => const VideoForbiddenInfrastructureFailure(),
    "CONFLICT": () => const VideoConflictFailure(),
    "RATE_LIMIT": () => const VideoRateLimitFailure(),
    "INVALID_DATA": () => const VideoInvalidDataFailure(),
  };

  static final Map<int, VideoFailure Function()> _statusMap = {
    400: () => const VideoBadRequestFailure(),
    401: () => const VideoUnauthorizedInfrastructureFailure(),
    403: () => const VideoForbiddenInfrastructureFailure(),
    409: () => const VideoConflictFailure(),
    429: () => const VideoRateLimitFailure(),
    500: () => const VideoServerFailure(),
    502: () => const VideoServerUnavailableFailure(),
    503: () => const VideoServerUnavailableFailure(),
    504: () => const VideoTimeoutFailure(),
  };

  static VideoFailure? map({
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
