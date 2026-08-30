import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_entity_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_filter_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_id_failure.dart';

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

    _validateFilter().when(
      success: (_) {
        result = _validateEntity();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, DiscountFailure> _validateFilter() {
    final hasAnyFilter = filter.ownerId != null ||
        (filter.ids != null && filter.ids!.isNotEmpty) ||
        filter.targetId != null ||
        filter.status != null ||
        filter.minPercent != null ||
        filter.maxPercent != null ||
        (filter.title != null && filter.title!.trim().isNotEmpty);

    if (!hasAnyFilter) {
      return const Result.failure(DiscountFilterEmptyFailure());
    }

    if (filter.ownerId != null && filter.ownerId! <= 0) {
      return const Result.failure(DiscountOwnerIdInvalidFailure());
    }

    if (filter.targetId != null && filter.targetId! <= 0) {
      return const Result.failure(DiscountTargetIdInvalidFailure());
    }

    if (filter.minPercent != null &&
        filter.maxPercent != null &&
        filter.minPercent! > filter.maxPercent!) {
      return const Result.failure(DiscountFilterInvalidPercentRangeFailure());
    }

    return const Result.success(null);
  }

  Result<void, DiscountFailure> _validateEntity() {
    // Code validation
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

    // Percent validation
    if (discount.percent < _limits.minDiscountPercent ||
        discount.percent > _limits.maxDiscountPercent) {
      return const Result.failure(DiscountEntityInvalidPercentFailure());
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
