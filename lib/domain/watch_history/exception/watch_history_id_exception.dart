/// Domain-level exceptions for WatchHistory ID validation
abstract class WatchHistoryIdException implements Exception {
  final String message;

  const WatchHistoryIdException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Invalid / missing id
/// ------------------------------------------------------

class WatchHistoryIdRequiredException extends WatchHistoryIdException {
  const WatchHistoryIdRequiredException()
      : super(message: 'WatchHistory id is required');
}

class WatchHistoryIdInvalidException extends WatchHistoryIdException {
  const WatchHistoryIdInvalidException()
      : super(message: 'WatchHistory id must be greater than 0');
}
