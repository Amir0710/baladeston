abstract class VideoImageUrlException implements Exception {
  final String message;

  const VideoImageUrlException(this.message);

  @override
  String toString() => message;
}

class EmptyImageUrlException extends VideoImageUrlException {
  EmptyImageUrlException()
      : super('Image URL cannot be empty');
}

class InvalidImageUrlFormatException extends VideoImageUrlException {
  InvalidImageUrlFormatException()
      : super('Invalid image URL format');
}

class UnsupportedImageUrlSchemeException extends VideoImageUrlException {
  UnsupportedImageUrlSchemeException()
      : super('Image URL must use http or https scheme');
}

class UnauthorizedImageHostException extends VideoImageUrlException {
  UnauthorizedImageHostException()
      : super('Image URL host is not allowed');
}

class InvalidImageUrlIdException extends VideoImageUrlException {
  InvalidImageUrlIdException()
      : super('Invalid video id. Id must be greater than 0');
}
