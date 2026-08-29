import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_signature_validator.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_image_file_failure.dart';
import 'package:image_picker/image_picker.dart';

class UploadCategoryItemImageUseCaseBusinessRule {
  final XFile image;
  static const _limits = Limits();
  static const _formats = Formats();

  const UploadCategoryItemImageUseCaseBusinessRule({
    required this.image,
  });

  Future<Result<void, CategoryFailure>> validate() async {
    return await imageValidation();
  }

  Future<Result<void, CategoryImageFileFailure>> imageValidation() async {
    final int size = await image.length();

    if (size > _limits.maxCategoryImageSize) {
      return const Result.failure(CategoryImageFileTooLargeFailure());
    }

    final ext = image.path.split('.').last.toLowerCase();
    if (!_formats.allowImageFormats.contains(ext)) {
      return const Result.failure(CategoryImageFileInvalidFormatFailure());
    }

    final isRealImage = await ImageSignatureValidator.isImageFile(image);
    if (!isRealImage) {
      return const Result.failure(CategoryImageFileInvalidContentFailure());
    }

    return const Result.success(null);
  }
}
