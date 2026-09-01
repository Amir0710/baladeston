import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_entity_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_filter_failure.dart';

class UpdateDiscountByFilterUsecaseBusinessRule {
  final DiscountQueryFilter filter;
  final DiscountEntity discount;
  static const Limits _limits = Limits();

  const UpdateDiscountByFilterUsecaseBusinessRule({
    required this.filter,
    required this.discount,
  });

  Result<void, DiscountFailure> validate() {
    late Result<void, DiscountFailure> result;

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

  Result<void, DiscountEntityFailure> _entityValidation() {
    final code = discount.code.trim();
    if (code.isEmpty) {
      return const Result.failure(DiscountEntityMissingCodeFailure());
    }
    if (TextContentGuard.containsHtml(code)) {
      return const Result.failure(DiscountEntityCodeContainsHtmlFailure());
    }
    if (TextContentGuard.isEmojiOnly(code)) {
      return const Result.failure(DiscountEntityCodeEmojiOnlyFailure());
    }
    if (TextContentGuard.hasControlCharacters(code)) {
      return const Result.failure(DiscountEntityCodeControlCharFailure());
    }
    if (code.length < _limits.minDiscountCode) {
      return const Result.failure(DiscountEntityCodeTooShortFailure());
    }
    if (code.length > _limits.maxDiscountCode) {
      return const Result.failure(DiscountEntityCodeTooLongFailure());
    }

    // Title validation
    final title = discount.title?.trim();
    if (title != null && title.isNotEmpty) {
      if (TextContentGuard.containsHtml(title)) {
        return const Result.failure(DiscountEntityTitleContainsHtmlFailure());
      }
      if (TextContentGuard.isEmojiOnly(title)) {
        return const Result.failure(DiscountEntityTitleEmojiOnlyFailure());
      }
      if (TextContentGuard.hasControlCharacters(title)) {
        return const Result.failure(DiscountEntityTitleControlCharFailure());
      }
      if (title.length < _limits.minDiscountTitle) {
        return const Result.failure(DiscountEntityTitleTooShortFailure());
      }
      if (title.length > _limits.maxDiscountTitle) {
        return const Result.failure(DiscountEntityTitleTooLongFailure());
      }
    }

    // Amount validation
    if (discount.amount != null) {
      if (discount.amount! < _limits.minDiscountAmount ||
          discount.amount! > _limits.maxDiscountAmount) {
        return const Result.failure(DiscountEntityInvalidAmountFailure());
      }
    }

    // Percent validation
    if (discount.percent < _limits.minDiscountPercent ||
        discount.percent > _limits.maxDiscountPercent) {
      return const Result.failure(DiscountEntityInvalidPercentFailure());
    }

    // TargetId validation
    if (discount.targetId != null) {
      if (discount.targetId! <= 0) {
        return const Result.failure(DiscountTargetIdInvalidFailure());
      }
    }

    // MinOrderAmount validation
    if (discount.minOrderAmount != null) {
      if (discount.minOrderAmount! < _limits.minDiscountOrderAmount ||
          discount.minOrderAmount! > _limits.maxDiscountOrderAmount) {
        return const Result.failure(
            DiscountEntityInvalidMinOrderAmountFailure());
      }
    }

    // Expiration validation
    if (discount.expiresAt != null) {
      final now = DateTime.now();
      if (discount.expiresAt!.isBefore(now)) {
        return const Result.failure(DiscountEntityExpiredFailure());
      }
      final maxExpiry =
      now.add(Duration(days: _limits.maxDiscountValidityDays));
      if (discount.expiresAt!.isAfter(maxExpiry)) {
        return const Result.failure(DiscountEntityExpirationTooFarFailure());
      }
    }

    // MaxUse validation
    if (discount.maxUse != null) {
      if (discount.maxUse! < _limits.minDiscountMaxUse) {
        return const Result.failure(DiscountEntityInvalidMaxUseFailure());
      }
    }

    return const Result.success(null);
  }
}
