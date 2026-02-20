abstract class VideoIdException implements Exception {
  final String message;

  const VideoIdException({required this.message});

  @override
  String toString() => message;
}

class VideoIdRequiredException extends VideoIdException {
  const VideoIdRequiredException()
      : super(message: 'Video id is required');
}

class VideoIdInvalidException extends VideoIdException {
  const VideoIdInvalidException()
      : super(message: 'Video id must be greater than 0');
}
