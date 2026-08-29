import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_image_url_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_id_failure.dart';

class UpdateCategoryItemByIdUsecaseBusinessRule {
  final CategoryItemEntity categoryItem;
  final int id;

  static const Limits _limits = Limits();

  const UpdateCategoryItemByIdUsecaseBusinessRule({
    required this.id,
    required this.categoryItem,
  });

  Result<void, CategoryFailure> validate() {
    late Result<void, CategoryFailure> result;

    _idValidation().when(success: (_) {
      result = _entityValidation();
    }, failure: (failure) {
      Result.failure(failure);
    });
    return result;
  }

  Result<void, CategoryItemIdFailure> _idValidation() {
    if (id < 0) {
      return Result.failure(CategoryItemIdInvalidFailure());
    }
    return Result.success(null);
  }

  Result<void, BaseCategoryValidationFailure> _entityValidation() {
    // category id
    if (categoryItem.categoryId <= 0) {
      return const Result.failure(
        CategoryItemEntityInvalidCategoryIdFailure(),
      );
    }

    // collection id
    if (categoryItem.collectionId <= 0) {
      return const Result.failure(
        CategoryItemEntityInvalidCollectionIdFailure(),
      );
    }

    // title
    final title = categoryItem.title?.trim();

    if (title != null && title.isNotEmpty) {
      if (TextContentGuard.containsHtml(title)) {
        return const Result.failure(
            CategoryItemEntityContainsHtmlTitleFailure());
      }
      if (TextContentGuard.isEmojiOnly(title)) {
        return const Result.failure(CategoryItemEntityEmojiOnlyTitleFailure());
      }
      if (TextContentGuard.hasControlCharacters(title)) {
        return const Result.failure(
            CategoryItemEntityControlCharTitleFailure());
      }
      if (title.length < _limits.minCategoryItemTitle) {
        return const Result.failure(
          CategoryItemEntityTitleTooShortFailure(),
        );
      }
      if (title.length > _limits.maxCategoryItemTitle) {
        return const Result.failure(
          CategoryItemEntityTooLongTitleFailure(),
        );
      }
    }

    // thumbnai url
    final thumbnailUrl = categoryItem.thumbnailUrl?.trim();

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
