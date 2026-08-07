import 'dart:io';

import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_image_file_failure.dart';

class UploadCategoryImageUseCaseBusinessRule {
  final File image;

  static const Limits _limits = Limits();
  static const Formats _formats = Formats();

  const UploadCategoryImageUseCaseBusinessRule({
    required this.image,
  });

  Result<void, CategoryFailure> validate() {
    if (!_isValidSize()) {
      return const Result.failure(CategoryImageFileSizeNotValidFailure());
    }

    if (!_isValidFormat()) {
      return const Result.failure(CategoryImageFileInvalidFormatFailure());
    }

    return const Result.success(null);
  }

  bool _isValidSize() {
    if (!image.existsSync()) return false;

    final size = image.lengthSync();
    return size > 0 && size <= _limits.maxCategoryImageSize;
  }

  bool _isValidFormat() {
    final ext = image.path.split('.').last.toLowerCase();
    return _formats.categoryImageFormats.contains(ext);
  }
}
