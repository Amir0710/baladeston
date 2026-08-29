import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_image_url_failure.dart';

class CreateCategoryUsecaseBusinessRule {
  final CategoryEntity category;
  static const Limits _limits = Limits();

  const CreateCategoryUsecaseBusinessRule({
    required this.category,
  });

  Result<void, CategoryFailure> validate() {
    return _entityValidation();
  }

  Result<void, BaseCategoryValidationFailure> _entityValidation() {
    // parent
    if (category.parent != null && category.parent! < 0) {
      return const Result.failure(CategoryEntityInvalidParentFailure());
    }

    // title
    final title = category.title.trim();

    if (title.isEmpty) {
      return const Result.failure(CategoryEntityMissingTitleFailure());
    }
    if (TextContentGuard.containsHtml(title)) {
      return const Result.failure(CategoryEntityContainsHtmlTitleFailure());
    }
    if (TextContentGuard.isEmojiOnly(title)) {
      return const Result.failure(CategoryEntityEmojiOnlyTitleFailure());
    }
    if (TextContentGuard.hasControlCharacters(title)) {
      return const Result.failure(CategoryEntityControlCharTitleFailure());
    }
    if (title.length < _limits.minCategoryTitle) {
      return const Result.failure(CategoryEntityTitleTooShortFailure());
    }
    if (title.length > _limits.maxCategoryTitle) {
      return const Result.failure(CategoryEntityTooLongTitleFailure());
    }

    // description
    final description = category.description.trim();

    if (description.isEmpty) {
      return const Result.failure(CategoryEntityMissingDescriptionFailure());
    }
    if (TextContentGuard.hasControlCharacters(description)) {
      return const Result.failure(
          CategoryEntityControlCharDescriptionFailure());
    }
    if (TextContentGuard.isEmojiOnly(description)) {
      return const Result.failure(
          CategoryEntityEmojiOnlyDescriptionFailure());
    }
    if (TextContentGuard.containsHtml(description)) {
      return const Result.failure(
          CategoryEntityControlCharDescriptionFailure());
    }
    if (description.length < _limits.minCategoryDescription) {
      return const Result.failure(CategoryEntityTooShortDescriptionFailure());
    }
    if (description.length > _limits.maxCategoryDescription) {
      return const Result.failure(CategoryEntityTooLongDescriptionFailure());
    }


    // thumbnail url
    final thumbnailUrl = category.thumbnailUrl?.trim();

    if (thumbnailUrl != null && thumbnailUrl.isNotEmpty) {
      if (!ImageUrlContentGuard.imageStructureValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlStructuralFailure(),
        );
      }
      if (!ImageUrlContentGuard.imageSchemeValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlUnsupportedSchemeFailure(),
        );
      }
      if (ImageUrlContentGuard.imageLengthValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlInvalidLengthFailure(),
        );
      }
      if (ImageUrlContentGuard.imageFormatValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlInvalidFormatFailure(),
        );
      }
    }

    return const Result.success(null);
  }
}
