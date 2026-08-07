import 'dart:io';

import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_image_file_failure.dart';

class UploadCollectionImageUsecaseBusinessRule {
  final File image;

  const UploadCollectionImageUsecaseBusinessRule({
    required this.image,
  });

  Result<void, CollectionFailure> validate() {
    return imageValidation();
  }

  Result<void, CollectionFailure> imageValidation() {
    final limits = Limits();
    final formats = Formats();
    final size = image.lengthSync();
    if (size > limits.maxCollectionImageSize) {
      return const Result.failure(CollectionImageFileTooLargeFailure());
    }

    final ext = image.path.split('.').last.toLowerCase();
    if (!formats.userImageFormats.contains(ext)) {
      return const Result.failure(CollectionImageFileInvalidFormatFailure());
    }

    return const Result.success(null);
  }
}
