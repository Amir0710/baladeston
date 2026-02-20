import 'dart:io';

import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/domain/video/exception/video_file_exception.dart';

final Limits limits = Limits();

class UploadVideoUseCaseBusinessRule {
  final File file;
  final int videoId;

  const UploadVideoUseCaseBusinessRule({
    required this.file,
    required this.videoId,
  });

  void validate() {
    _validateVideoId();
    _validateFileExists();
    _validateFileSize();
    _validateFileFormat();
  }

  void _validateVideoId() {
    if (videoId <= 0) {
      throw InvalidVideoFileIdException();
    }
  }

  void _validateFileExists() {
    if (!file.existsSync()) {
      throw VideoFileFormatException();
    }
  }

  void _validateFileSize() {
    final sizeInMb = file.lengthSync() / (1024 * 1024);
    if (sizeInMb > limits.maxVideoFileSize) {
      throw VideoFileTooLargeException();
    }
  }

  void _validateFileFormat() {
    final extension = file.path.split('.').last.toLowerCase();

    const allowedFormats = ['mp4', 'mov', 'webm'];
    if (!allowedFormats.contains(extension)) {
      throw VideoFileFormatException();
    }
  }
}
