import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_filter_failure.dart';

class GetDiscountByFilterUsecaseBusinessRule {
  final DiscountQueryFilter filter;
  static const Limits _limits = Limits();

  const GetDiscountByFilterUsecaseBusinessRule({
    required this.filter,
  });

  Result<void, DiscountFailure> validate() {
    return _filterValidation();
  }

  Result<void, DiscountFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final ownerId = filter.ownerId;
    final targetId = filter.targetId;
    final searchTerm = filter.searchTerm?.trim();
    final minPercent = filter.minPercent;
    final maxPercent = filter.maxPercent;
    final maxUse = filter.maxUse;
    final usage = filter.usage;
    final createAt = filter.createAt;
    final expiresAt = filter.expiresAt;

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(DiscountFilterInvalidIdsFailure());
      }
    }

    // ownerId
    if (ownerId != null && ownerId <= 0) {
      return const Result.failure(DiscountFilterInvalidOwnerIdFailure());
    }

    // targetId
    if (targetId != null && targetId <= 0) {
      return const Result.failure(DiscountFilterInvalidTargetIdFailure());
    }

    // searchTerm (search term)
    if (searchTerm != null) {
      if (TextContentGuard.containsHtml(searchTerm)) {
        return const Result.failure(DiscountFilterContainsHtmlTitleFailure());
      }
      if (TextContentGuard.isEmojiOnly(searchTerm)) {
        return const Result.failure(DiscountFilterEmojiOnlyTitleFailure());
      }
      if (TextContentGuard.hasControlCharacters(searchTerm)) {
        return const Result.failure(DiscountFilterControlCharTitleFailure());
      }
      if (searchTerm.length < _limits.minDiscountFilterSearchTermLength) {
        return const Result.failure(DiscountFilterTooShortTitleFailure());
      }
      if (searchTerm.length > _limits.maxDiscountFilterSearchTermLength) {
        return const Result.failure(DiscountFilterTooLongTitleFailure());
      }
    }

    // percentages
    if (minPercent != null &&
        (minPercent < _limits.minDiscountPercent ||
            minPercent > _limits.maxDiscountPercent)) {
      return const Result.failure(DiscountFilterInvalidMinPercentFailure());
    }

    if (maxPercent != null &&
        (maxPercent < _limits.minDiscountPercent ||
            maxPercent > _limits.maxDiscountPercent)) {
      return const Result.failure(DiscountFilterInvalidMaxPercentFailure());
    }

    if (minPercent != null && maxPercent != null && minPercent > maxPercent) {
      return const Result.failure(DiscountFilterInvalidPercentRangeFailure());
    }

    // usages
    if (maxUse != null && maxUse <= _limits.minDiscountMaxUse) {
      return const Result.failure(DiscountFilterInvalidMaxUseFailure());
    }

    if (usage != null && usage < 0) {
      return const Result.failure(DiscountFilterInvalidUsageFailure());
    }

    if (usage != null && maxUse != null && usage > maxUse) {
      return const Result.failure(DiscountFilterUsageExceedsMaxUseFailure());
    }

    // dates
    if (createAt != null && createAt.isAfter(DateTime.now())) {
      return const Result.failure(DiscountFilterInvalidCreatedAtFailure());
    }

    if (expiresAt != null && createAt != null && expiresAt.isBefore(createAt)) {
      return const Result.failure(DiscountFilterInvalidExpiresAtFailure());
    }

    if (createAt != null && expiresAt != null && createAt.isAfter(expiresAt)) {
      return const Result.failure(DiscountFilterInvalidDatesRangeFailure());
    }

    // empty filter check
    final isEmpty = ids == null &&
        ownerId == null &&
        targetId == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        minPercent == null &&
        maxPercent == null &&
        createAt == null &&
        expiresAt == null &&
        maxUse == null &&
        usage == null;

    if (isEmpty) {
      return const Result.failure(DiscountFilterEmptyFailure());
    }

    return const Result.success(null);
  }
}
