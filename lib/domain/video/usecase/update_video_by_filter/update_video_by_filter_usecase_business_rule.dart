import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/core/variable/video_url_content_guard.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_entity_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_filter_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_image_url_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_url_failure.dart';

class UpdateVideoByFilterUsecaseBusinessRule {
  final VideoEntity video;
  final VideoQueryFilter filter;
  static const Limits _limits = Limits();

  const UpdateVideoByFilterUsecaseBusinessRule({
    required this.video,
    required this.filter,
  });

  Result<void, VideoFailure> validate() {
    late Result<void, VideoFailure> result;
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

  Result<void, VideoFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final searchTerm = filter.searchTerm?.trim();
    final ownerId = filter.ownerId;
    final uploaderId = filter.uploaderId;
    final minRating = filter.minRating;
    final minPrice = filter.minPrice;
    final uploadedAfter = filter.uploadedAfter;
    final uploadedBefore = filter.uploadedBefore;
    final minRecommendedAge = filter.minRecommendedAge;
    final maxRecommendedAge = filter.maxRecommendedAge ;

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(VideoFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null) {
      if (TextContentGuard.containsHtml(searchTerm)) {
        return const Result.failure(VideoFilterContainsHtmlSearchTermFailure());
      }
      if (TextContentGuard.isEmojiOnly(searchTerm)) {
        return const Result.failure(VideoFilterEmojiOnlySearchTermFailure());
      }
      if (TextContentGuard.hasControlCharacters(searchTerm)) {
        return const Result.failure(VideoFilterControlCharSearchTermFailure());
      }
      if (searchTerm.length < _limits.minVideoFilterSearchTermLength) {
        return const Result.failure(VideoFilterSearchTermTooShortFailure());
      }
      if (searchTerm.length > _limits.maxVideoFilterSearchTermLength) {
        return const Result.failure(VideoFilterSearchTermTooLongFailure());
      }
    }


    // recommended age
    if (minRecommendedAge != null && minRecommendedAge < _limits.minVideoRecommendedAge) {
      return const Result.failure(VideoFilterRecommendedAgeTooLowFailure());
    }
    if (maxRecommendedAge != null && maxRecommendedAge > _limits.maxVideoRecommendedAge) {
      return const Result.failure(VideoFilterRecommendedAgeTooHighFailure());
    }


    // price
    if (minPrice != null && minPrice < 0) {
      return const Result.failure(VideoFilterPriceTooLowFailure());
    }
    if (maxPrice != null && maxPrice < 0) {
      return const Result.failure(VideoFilterPriceTooHighFailure());
    }
    if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      return const Result.failure(VideoFilterPriceRangeFailure());
    }

    // dates
    if (uploadedAfter != null && uploadedAfter.isAfter(DateTime.now())) {
      return const Result.failure(VideoFilterInvalidUploadedAfterFailure());
    }
    if (uploadedBefore != null && uploadedBefore.isAfter(DateTime.now())) {
      return const Result.failure(VideoFilterInvalidUploadedBeforeFailure());
    }
    if (uploadedAfter != null &&
        uploadedBefore != null &&
        uploadedAfter.isAfter(uploadedBefore)) {
      return const Result.failure(VideoFilterInvalidDateRangeFailure());
    }
    // empty check
    final isEmpty = ids == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        ownerId == null &&
        uploaderId == null &&
        minRating == null &&
        minPrice == null &&
        uploadedAfter == null &&
        uploadedBefore == null &&
        minRecommendedAge == null &&
        maxRecommendedAge == null &&
        filter.status == null &&
        filter.level == null;

    if (isEmpty) {
      return const Result.failure(VideoFilterEmptyFailure());
    }

    return const Result.success(null);
  }

  Result<void, BaseVideoValidationFailure> _entityValidation() {
    // title
    final title = video.title.trim();
    if (title.isEmpty) {
      return const Result.failure(VideoEntityTitleEmptyFailure());
    }
    if (title.length > _limits.maxVideoTitle) {
      return const Result.failure(VideoEntityTitleTooLongFailure());
    }
    if (title.length < _limits.minVideoTitle) {
      return const Result.failure(VideoEntityTitleTooShortFailure());
    }
    if (TextContentGuard.containsHtml(title)) {
      return const Result.failure(VideoEntityTitleContainsHtmlFailure());
    }
    if (TextContentGuard.isEmojiOnly(title)) {
      return const Result.failure(VideoEntityTitleEmojiOnlyFailure());
    }
    if (TextContentGuard.hasControlCharacters(title)) {
      return const Result.failure(VideoEntityTitleControlCharFailure());
    }

    // description
    final description = video.description.trim();
    if (description.isEmpty) {
      return const Result.failure(VideoEntityMissingDescriptionFailure());
    }
    if (description.length < _limits.minVideoDescription) {
      return const Result.failure(VideoEntityTooShortDescriptionFailure());
    }
    if (description.length > _limits.maxVideoDescription) {
      return const Result.failure(VideoEntityTooLongDescriptionFailure());
    }
    if (TextContentGuard.hasControlCharacters(description)) {
      return const Result.failure(VideoEntityControlCharDescriptionFailure());
    }
    if (TextContentGuard.isEmojiOnly(description)) {
      return const Result.failure(VideoEntityEmojiOnlyDescriptionFailure());
    }
    if (TextContentGuard.containsHtml(description)) {
      return const Result.failure(VideoEntityContainsHtmlDescriptionFailure());
    }

    // price
    if (video.price < _limits.minVideoPrice) {
      return const Result.failure(VideoEntityPriceTooLowFailure());
    }
    if (video.price > _limits.maxVideoPrice) {
      return const Result.failure(VideoEntityPriceTooHighFailure());
    }

    // recommended age
    if (video.recommendedAge < _limits.minVideoRecommendedAge) {
      return const Result.failure(VideoEntityRecommendedAgeTooLowFailure());
    }
    if (video.recommendedAge > _limits.maxVideoRecommendedAge) {
      return const Result.failure(VideoEntityRecommendedAgeTooHighFailure());
    }

    // thumbnail
    final thumbnailUrl = video.thumbnailUrl?.trim();
    if (thumbnailUrl != null && thumbnailUrl.isNotEmpty) {
      if (!ImageUrlContentGuard.imageStructureValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlStructuralFailure());
      }
      if (!ImageUrlContentGuard.imageSchemeValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlUnsupportedSchemeFailure());
      }
      if (!ImageUrlContentGuard.imageLengthValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlInvalidLengthFailure());
      }
      if (!ImageUrlContentGuard.imageFormatValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlInvalidFormatFailure());
      }
    }

    //  video url
    final videoUrl = video.videoUrl.trim();
    if (videoUrl.isEmpty) {
      return const Result.failure(VideoUrlMissing());
    }
    if (!VideoUrlContentGuard.videoStructureValidation(videoUrl)) {
      return const Result.failure(VideoUrlStructuralFailure());
    }
    if (!VideoUrlContentGuard.videoSchemeValidation(videoUrl)) {
      return const Result.failure(VideoUrlUnsupportedSchemeFailure());
    }
    if (!VideoUrlContentGuard.videoLengthValidation(videoUrl)) {
      return const Result.failure(VideoUrlInvalidLengthFailure());
    }
    if (!VideoUrlContentGuard.videoFormatValidation(videoUrl)) {
      return const Result.failure(VideoUrlInvalidFormatFailure());
    }

    return const Result.success(null);
  }
}
