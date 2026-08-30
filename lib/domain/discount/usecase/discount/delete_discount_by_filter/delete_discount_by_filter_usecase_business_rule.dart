import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_entity_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_filter_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_id_failure.dart';

class DeleteDiscountByFilterUsecaseBusinessRule {
  final DiscountQueryFilter filter;
  static const Limits _limits = Limits();

  const DeleteDiscountByFilterUsecaseBusinessRule({
    required this.filter,
  });

  Result<void, DiscountFailure> validate() {
    // Empty filter check
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

    // ownerId
    if (filter.ownerId != null && filter.ownerId! <= 0) {
      return const Result.failure(DiscountOwnerIdInvalidFailure());
    }

    // targetId
    if (filter.targetId != null && filter.targetId! <= 0) {
      return const Result.failure(DiscountTargetIdInvalidFailure());
    }

    // title (search term)
    if (filter.title != null && filter.title!.trim().isNotEmpty) {
      final term = filter.title!.trim();
      if (TextContentGuard.containsHtml(term) ||
          TextContentGuard.hasControlCharacters(term)) {
        return const Result.failure(DiscountEntityTitleControlCharFailure());
      }
      if (term.length < _limits.minDiscountFilterSearchTermLength) {
        return const Result.failure(DiscountFilterSearchTermTooShortFailure());
      }
      if (term.length > _limits.maxDiscountFilterSearchTermLength) {
        return const Result.failure(DiscountFilterSearchTermTooLongFailure());
      }
    }

    // Percent range
    if (filter.minPercent != null &&
        filter.maxPercent != null &&
        filter.minPercent! > filter.maxPercent!) {
      return const Result.failure(DiscountFilterInvalidPercentRangeFailure());
    }

    return const Result.success(null);
  }
}
