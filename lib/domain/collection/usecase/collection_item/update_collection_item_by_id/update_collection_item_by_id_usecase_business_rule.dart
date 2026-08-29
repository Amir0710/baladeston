import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_image_url_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_id_failure.dart';

class UpdateCollectionItemByIdUseCaseBusinessRule {
  final CollectionItemEntity collectionItem;
  final int id;
  static const Limits _limits = Limits();

  const UpdateCollectionItemByIdUseCaseBusinessRule({
    required this.collectionItem,
    required this.id,
  });

  Result<void, CollectionFailure> validate() {
    late Result<void, CollectionFailure> result;

    _entityValidation().when(
      success: (_) {
        result = _idValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, BaseCollectionValidationFailure> _entityValidation() {
    // videoId
    if (collectionItem.videoId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidVideoIdFailure(),
      );
    }

    // collectionId
    if (collectionItem.collectionId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidCollectionIdFailure(),
      );
    }

    // title
    final title = collectionItem.title?.trim();

    if (title != null && title.isNotEmpty) {
      if (TextContentGuard.containsHtml(title)) {
        return const Result.failure(
            CollectionItemEntityContainsHtmlTitleFailure());
      }
      if (TextContentGuard.isEmojiOnly(title)) {
        return const Result.failure(
            CollectionItemEntityEmojiOnlyTitleFailure());
      }
      if (TextContentGuard.hasControlCharacters(title)) {
        return const Result.failure(
            CollectionItemEntityControlCharTitleFailure());
      }
      if (title.length < _limits.minCollectionItemTitle) {
        return const Result.failure(
          CollectionItemEntityTitleTooShortFailure(),
        );
      }
      if (title.length > _limits.maxCollectionItemTitle) {
        return const Result.failure(
          CollectionItemEntityTooLongTitleFailure(),
        );
      }
    }
    // thumbnai url
    final thumbnailUrl = collectionItem.thumbnailUrl?.trim();

    if (thumbnailUrl != null && thumbnailUrl.isNotEmpty) {
      if (!ImageUrlContentGuard.imageStructureValidation(thumbnailUrl)) {
        return const Result.failure(
          CollectionImageUrlStructuralFailure(),
        );
      }
      if (!ImageUrlContentGuard.imageSchemeValidation(thumbnailUrl)) {
        return const Result.failure(
          CollectionImageUrlUnsupportedSchemeFailure(),
        );
      }
      if (ImageUrlContentGuard.imageLengthValidation(thumbnailUrl)) {
        return const Result.failure(
          CollectionImageUrlInvalidLengthFailure(),
        );
      }
      if (ImageUrlContentGuard.imageFormatValidation(thumbnailUrl)) {
        return const Result.failure(
          CollectionImageUrlInvalidFormatFailure(),
        );
      }
    }

    return const Result.success(null);
  }

  Result<void, CollectionItemIdFailure> _idValidation() {
    if (id <= 0) {
      return const Result.failure(CollectionItemIdInvalidFailure());
    }
    return const Result.success(null);
  }
}
