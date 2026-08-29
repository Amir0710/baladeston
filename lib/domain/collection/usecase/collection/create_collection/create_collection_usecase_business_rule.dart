import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_image_url_failure.dart';

class CreateCollectionUsecaseBusinessRule {
  final CollectionEntity collection;
  static const Limits _limits = Limits();

  const CreateCollectionUsecaseBusinessRule({
    required this.collection,
  });

  Result<void, CollectionFailure> validate() {
    return _entityValidation();
  }

  Result<void, BaseCollectionValidationFailure> _entityValidation() {
    // title
    final title = collection.title.trim();

    if (title.isEmpty) {
      return const Result.failure(CollectionEntityMissingTitleFailure());
    }
    if (TextContentGuard.containsHtml(title)) {
      return const Result.failure(CollectionEntityContainsHtmlTitleFailure());
    }
    if (TextContentGuard.isEmojiOnly(title)) {
      return const Result.failure(CollectionEntityEmojiOnlyTitleFailure());
    }
    if (TextContentGuard.hasControlCharacters(title)) {
      return const Result.failure(CollectionEntityControlCharTitleFailure());
    }
    if (title.length < _limits.minCollectionTitle) {
      return const Result.failure(CollectionEntityTitleTooShortFailure());
    }
    if (title.length > _limits.maxCollectionTitle) {
      return const Result.failure(CollectionEntityTooLongTitleFailure());
    }

    // description
    final description = collection.description.trim();

    if (description.isEmpty) {
      return const Result.failure(CollectionEntityMissingDescriptionFailure());
    }
    if (TextContentGuard.hasControlCharacters(description)) {
      return const Result.failure(
          CollectionEntityControlCharDescriptionFailure());
    }
    if (TextContentGuard.isEmojiOnly(description)) {
      return const Result.failure(
          CollectionEntityEmojiOnlyDescriptionFailure());
    }
    if (TextContentGuard.containsHtml(description)) {
      return const Result.failure(
          CollectionEntityControlCharDescriptionFailure());
    }
    if (description.length < _limits.minCollectionDescription) {
      return const Result.failure(CollectionEntityTooShortDescriptionFailure());
    }
    if (description.length > _limits.maxCollectionDescription) {
      return const Result.failure(CollectionEntityTooLongDescriptionFailure());
    }

    // thumbnail url
    final thumbnailUrl = collection.thumbnailUrl?.trim();

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
}
