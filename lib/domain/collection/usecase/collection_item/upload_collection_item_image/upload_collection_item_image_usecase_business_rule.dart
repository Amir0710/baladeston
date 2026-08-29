import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_signature_validator.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_image_file_failure.dart';
import 'package:image_picker/image_picker.dart';

class UploadCollectionItemImageUseCaseBusinessRule {
  final XFile image;
  static const _limits = Limits();
  static const _formats = Formats();

  const UploadCollectionItemImageUseCaseBusinessRule({
    required this.image,
  });

  Future<Result<void, CollectionFailure>> validate() async {
    return await imageValidation();
  }

  Future<Result<void, CollectionImageFileFailure>> imageValidation() async {
    final int size = await image.length();

    if (size > _limits.maxCollectionImageSize) {
      return const Result.failure(CollectionImageFileTooLargeFailure());
    }

    final ext = image.path.split('.').last.toLowerCase();
    if (!_formats.allowImageFormats.contains(ext)) {
      return const Result.failure(CollectionImageFileInvalidFormatFailure());
    }

    final isRealImage = await ImageSignatureValidator.isImageFile(image);
    if (!isRealImage) {
      return const Result.failure(CollectionImageFileInvalidContentFailure());
    }

    return const Result.success(null);
  }
}
