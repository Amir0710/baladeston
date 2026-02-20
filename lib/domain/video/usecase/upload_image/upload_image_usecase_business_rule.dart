import 'dart:io';

import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/domain/video/exception/video_image_exception.dart';

class UploadVideoImageUseCaseBusinessRule {
  final int id;
  final File image;

  UploadVideoImageUseCaseBusinessRule({
    required this.id,
    required this.image,
  });

  final Limits _limits = Limits();

  void validate() {
    _validateId();
    _validateFileSize();
    _validateFormat();
  }

  /// --------------------------------------------------
  /// Guards
  /// --------------------------------------------------

  void _validateId() {
    if (id <= 0) {
      throw InvalidVideoImageIdException();
    }
  }

  void _validateFileSize() {
    final bytes = image.lengthSync();
    final sizeInMb = bytes / (1024 * 1024);

    if (sizeInMb > _limits.maxVideoImageSize) {
      throw VideoImageTooLargeException();
    }
  }

  void _validateFormat() {
    final extension = image.path.split('.').last.toLowerCase();

    const allowedFormats = ['jpg', 'jpeg', 'png', 'webp'];

    if (!allowedFormats.contains(extension)) {
      throw VideoImageFormatException();
    }
  }
}
