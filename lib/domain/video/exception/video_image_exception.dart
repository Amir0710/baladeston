import 'package:baladeston/core/constants/limits.dart';

final Limits limits = Limits();

abstract class VideoImageException implements Exception {
  final String message;

  const VideoImageException(this.message);

  @override
  String toString() => message;
}

class VideoImageTooLargeException extends VideoImageException {
  VideoImageTooLargeException()
      : super("image size exceeds ${limits.maxVideoImageSize}MB limit");
}

class VideoImageFormatException extends VideoImageException {
  VideoImageFormatException()
      : super('Invalid image format. Allowed formats: mp4, mov, webm');
}

class InvalidVideoImageIdException extends VideoImageException {
  InvalidVideoImageIdException()
      : super('Invalid image id. Id must be greater than 0');
}
