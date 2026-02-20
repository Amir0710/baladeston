abstract class VideoFilterException implements Exception {
  final String message;

  const VideoFilterException({required this.message});

  @override
  String toString() => message;
}

class VideoFilterLimitException extends VideoFilterException {
  const VideoFilterLimitException()
      : super(message: 'Limit must be greater than 0');
}

class VideoFilterOffsetException extends VideoFilterException {
  const VideoFilterOffsetException()
      : super(message: 'Offset must be non-negative');
}

class VideoFilterOrderException extends VideoFilterException {
  const VideoFilterOrderException()
      : super(message: 'Invalid order field');
}

class VideoFilterEmptyException extends VideoFilterException {
  const VideoFilterEmptyException()
      : super(
    message:
    'No filter applied: refusing to bulk delete/update without guard',
  );
}
