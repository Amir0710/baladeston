import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_image_url_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_filter_failure.dart';

class UpdateCollectionItemByFilterUseCaseBusinessRule {
  final CollectionItemEntity collectionItem;
  final CollectionItemQueryFilter filter;
  static const Limits _limits = Limits();

  const UpdateCollectionItemByFilterUseCaseBusinessRule({
    required this.collectionItem,
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

  Result<void, CollectionItemFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final videoId = filter.videoId;
    final collectionId = filter.collectionId;
    final searchTerm = filter.searchTerm?.trim();
    final minPrice = filter.minPrice;
    final maxPrice = filter.maxPrice;
    final minRating = filter.minRating;
    final adderId = filter.adderId; // this filed don't have invalid

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(CollectionItemFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null && TextContentGuard.containsHtml(searchTerm)) {
      return const Result.failure(
          CollectionItemFilterContainsHtmlSearchTermFailure());
    }
    if (searchTerm != null && TextContentGuard.isEmojiOnly(searchTerm)) {
      return const Result.failure(
          CollectionItemFilterEmojiOnlySearchTermFailure());
    }
    if (searchTerm != null &&
        TextContentGuard.hasControlCharacters(searchTerm)) {
      return const Result.failure(
          CollectionItemFilterControlCharSearchTermFailure());
    }
    if (searchTerm != null &&
        searchTerm.length < _limits.minCollectionItemFilterSearchTermLength) {
      return const Result.failure(
          CollectionItemFilterSearchTermTooShortFailure());
    }
    if (searchTerm != null &&
        searchTerm.length > _limits.maxCollectionItemFilterSearchTermLength) {
      return const Result.failure(
          CollectionItemFilterSearchTermTooLongFailure());
    }

    // collection id
    if (collectionId != null && collectionId <= 0) {
      return const Result.failure(
          CollectionItemFilterInvalidCollectionIdFailure());
    }

    // video id
    if (videoId != null && videoId <= 0) {
      return const Result.failure(CollectionItemFilterInvalidVideoIdFailure());
    }

    // rating
    if (minRating != null) {
      if (minRating < _limits.minRate || minRating > _limits.maxRate) {
        return const Result.failure(
            CollectionItemFilterInvalidMinRatingFailure());
      }
    }

    // price

    if (minPrice != null &&
        (minPrice < _limits.minVideoPrice ||
            minPrice > _limits.maxVideoPrice)) {
      return const Result.failure(CollectionItemFilterMinPriceFailure());
    }
    if (maxPrice != null &&
        (maxPrice < _limits.minVideoPrice ||
            maxPrice > _limits.maxVideoPrice)) {
      return const Result.failure(CollectionItemFilterMaxPriceFailure());
    }

    if (maxPrice != null && minPrice != null && minPrice > maxPrice) {
      return const Result.failure(CollectionItemFilterPriceRangeFailure());
    }


    // empty filter
    final isEmpty = ids == null &&
        collectionId == null &&
        videoId == null &&
        adderId == null &&
        minPrice == null &&
        maxPrice == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        minRating == null;
    if (isEmpty) {
      return const Result.failure(CollectionItemFilterEmptyFailure());
    }

    return const Result.success(null);
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
}
