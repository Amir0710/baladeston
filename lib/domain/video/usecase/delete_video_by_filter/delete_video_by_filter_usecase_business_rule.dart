import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_filter_failure.dart';

class DeleteVideoByFilterUsecaseBusinessRule {
  final VideoQueryFilter filter;
  static const Limits _limits = Limits();

  const DeleteVideoByFilterUsecaseBusinessRule({
    required this.filter,
  });

  Result<void, VideoFailure> validate() {
    return _filterValidation();
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
}
