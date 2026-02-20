abstract class VideoFileUrlException implements Exception {
  final String message;

  const VideoFileUrlException(this.message);

  @override
  String toString() => message;
}

class EmptyVideoFileUrlException extends VideoFileUrlException {
  EmptyVideoFileUrlException()
      : super('Video URL cannot be empty');
}

class InvalidVideoUrlFormatException extends VideoFileUrlException {
  InvalidVideoUrlFormatException()
      : super('Invalid video URL format');
}

class UnsupportedVideoUrlSchemeException extends VideoFileUrlException {
  UnsupportedVideoUrlSchemeException()
      : super('Video URL must use http or https scheme');
}

class UnauthorizedVideoHostException extends VideoFileUrlException {
  UnauthorizedVideoHostException()
      : super('Video URL host is not allowed');
}

class InvalidVideoUrlIdException extends VideoFileUrlException {
  InvalidVideoUrlIdException()
      : super('Invalid video id. Id must be greater than 0');
}
