import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_filter_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_image_url_failure.dart';

class UpdateCollectionByFilterUsecaseBusinessRule {
  final CollectionEntity collection;
  final CollectionQueryFilter filter;

  static const Limits _limits = Limits();

  const UpdateCollectionByFilterUsecaseBusinessRule({
    required this.collection,
    required this.filter,
  });

  Result<void, CollectionFailure> validate() {
    late Result<void, CollectionFailure> result;

    _filterValidation().when(
      success: (_) {
        result = _entityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, CollectionFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final minCount = filter.minCount;
    final maxCount = filter.maxCount;
    final minPrice = filter.minPrice;
    final maxPrice = filter.maxPrice;
    final searchTerm = filter.searchTerm?.trim();
    final ownerId = filter.ownerId;
    final type = filter.type ;
    final minRating = filter.minRating;


    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(CollectionFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null && TextContentGuard.containsHtml(searchTerm)) {
      return const Result.failure(
          CollectionFilterContainsHtmlSearchTermFailure());
    }
    if (searchTerm != null && TextContentGuard.isEmojiOnly(searchTerm)) {
      return const Result.failure(CollectionFilterEmojiOnlySearchTermFailure());
    }
    if (searchTerm != null && TextContentGuard.hasControlCharacters(searchTerm)) {
      return const Result.failure(
          CollectionFilterControlCharSearchTermFailure());
    }
    if (searchTerm != null &&
        searchTerm.length < _limits.minCollectionFilterSearchTermLength) {
      return const Result.failure(CollectionFilterSearchTermTooShortFailure());
    }
    if (searchTerm != null &&
        searchTerm.length > _limits.maxCollectionFilterSearchTermLength) {
      return const Result.failure(CollectionFilterSearchTermTooLongFailure());
    }

    // count bounds
    if (minCount != null && minCount < _limits.minCollectionCount) {
      return const Result.failure(CollectionFilterMinCountFailure());
    }

    if (maxCount != null && maxCount > _limits.maxCollectionCount) {
      return const Result.failure(CollectionFilterMaxCountFailure());
    }

    if (minCount != null && maxCount != null && minCount > maxCount) {
      return const Result.failure(CollectionFilterCountRangeFailure());
    }

    // price bounds
    if (minPrice != null && minPrice < 0) {
      return const Result.failure(CollectionFilterMinPriceFailure());
    }

    if (maxPrice != null && maxPrice < 0) {
      return const Result.failure(CollectionFilterMaxPriceFailure());
    }

    if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      return const Result.failure(CollectionFilterPriceRangeFailure());
    }

    // rating
    if (minRating != null) {
      if (minRating < _limits.minRate || minRating > _limits.maxRate) {
        return const Result.failure(CollectionFilterInvalidMinRatingFailure());
      }
    }

    // empty filter
    final isEmpty = ids == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        ownerId == null &&
        minCount == null &&
        maxCount == null &&
        minPrice == null &&
        maxPrice == null &&
        minRating == null &&
        type == null &&
        filter.status == null;



    if (isEmpty) {
      return const Result.failure(CollectionFilterEmptyFailure());
    }

    return const Result.success(null);
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
