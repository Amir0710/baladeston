abstract class WatchHistoryEntityException implements Exception {
  final String message;

  const WatchHistoryEntityException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Required field validations
/// ------------------------------------------------------

class WatchHistoryVideoRequiredException
    extends WatchHistoryEntityException {
  const WatchHistoryVideoRequiredException()
      : super(message: 'VideoId is required');
}

class WatchHistoryUserRequiredException
    extends WatchHistoryEntityException {
  const WatchHistoryUserRequiredException()
      : super(message: 'UserId is required');
}

/// ------------------------------------------------------
/// Value & format validations
/// ------------------------------------------------------

class WatchHistoryEntityIdInvalidException
    extends WatchHistoryEntityException {
  const WatchHistoryEntityIdInvalidException()
      : super(message: 'WatchHistory id must be greater than 0');
}

class WatchHistoryPositionInvalidException
    extends WatchHistoryEntityException {
  const WatchHistoryPositionInvalidException()
      : super(message: 'Invalid watch position');
}

class WatchHistoryDurationInvalidException
    extends WatchHistoryEntityException {
  const WatchHistoryDurationInvalidException()
      : super(message: 'Invalid video duration');
}

/// ------------------------------------------------------
/// Business constraints
/// ------------------------------------------------------

class WatchHistoryPositionOverflowException
    extends WatchHistoryEntityException {
  const WatchHistoryPositionOverflowException()
      : super(message: 'Watch position exceeds video duration');
}

/// ------------------------------------------------------
/// Update / Partial update specific
/// ------------------------------------------------------

class WatchHistoryNoUpdatableFieldsException
    extends WatchHistoryEntityException {
  const WatchHistoryNoUpdatableFieldsException()
      : super(message: 'No updatable fields provided');
}
