abstract class VideoEntityException implements Exception {
  final String message;

  const VideoEntityException({required this.message});

  @override
  String toString() => message;
}

/// ------------------------------------------------------
/// Required field validations
/// ------------------------------------------------------

class VideoTitleEmptyException extends VideoEntityException {
  const VideoTitleEmptyException()
      : super(message: 'Video title must not be empty');
}

class VideoFileRequiredException extends VideoEntityException {
  const VideoFileRequiredException()
      : super(message: 'Video file is required');
}

/// ------------------------------------------------------
/// Value & format validations
/// ------------------------------------------------------

class VideoDurationInvalidException extends VideoEntityException {
  const VideoDurationInvalidException()
      : super(message: 'Invalid video duration');
}

class VideoFormatInvalidException extends VideoEntityException {
  const VideoFormatInvalidException()
      : super(message: 'Invalid video format');
}

/// ------------------------------------------------------
/// Business constraints
/// ------------------------------------------------------

class VideoOwnerInvalidException extends VideoEntityException {
  const VideoOwnerInvalidException()
      : super(message: 'Invalid video owner');
}

/// ------------------------------------------------------
/// Update specific
/// ------------------------------------------------------

class VideoNoUpdatableFieldsException extends VideoEntityException {
  const VideoNoUpdatableFieldsException()
      : super(message: 'No updatable fields provided');
}
