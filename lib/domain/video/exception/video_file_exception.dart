import 'package:baladeston/core/constants/limits.dart';

final Limits limits = Limits();

abstract class VideoFileException implements Exception {
  final String message;

  const VideoFileException(this.message);

  @override
  String toString() => message;
}

class VideoFileTooLargeException extends VideoFileException {
  VideoFileTooLargeException()
      : super("Video size exceeds ${limits.maxVideoFileSize}MB limit");
}

class VideoFileFormatException extends VideoFileException {
  VideoFileFormatException()
      : super('Invalid video format. Allowed formats: mp4, mov, webm');
}

class InvalidVideoFileIdException extends VideoFileException {
  InvalidVideoFileIdException()
      : super('Invalid video id. Id must be greater than 0');
}
