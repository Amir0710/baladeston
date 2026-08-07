import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/exception/discount_filter_exception.dart';

class DeleteDiscountByFilterUsecaseBusinessRule {
  final DiscountQueryFilter filter;

  const DeleteDiscountByFilterUsecaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateEmptyFilter();
    _validateIds();
    _validatePercentRange();
    _validateStatus();
  }

  // ------------------------------------------------------
  // Prevent deleting everything
  // ------------------------------------------------------

  void _validateEmptyFilter() {
    final hasAnyFilter =
        filter.id != null ||
            filter.userId != null ||
            filter.categoryId != null ||
            filter.videoId != null ||
            filter.status != null ||
            filter.minPercent != null ||
            filter.maxPercent != null;

    if (!hasAnyFilter) {
      throw DiscountFilterEmptyException();
    }
  }

  // ------------------------------------------------------
  // Id validations
  // ------------------------------------------------------

  void _validateIds() {
    if (filter.id != null && filter.id! <= 0) {
      throw DiscountFilterInvalidIdException();
    }

    if (filter.userId != null && filter.userId! <= 0) {
      throw DiscountFilterInvalidIdException();
    }

    if (filter.categoryId != null && filter.categoryId! <= 0) {
      throw DiscountFilterInvalidIdException();
    }

    if (filter.videoId != null && filter.videoId! <= 0) {
      throw DiscountFilterInvalidIdException();
    }
  }

  // ------------------------------------------------------
  // Percent range validation
  // ------------------------------------------------------

  void _validatePercentRange() {
    if (filter.minPercent != null &&
        (filter.minPercent! < 1 || filter.minPercent! > 100)) {
      throw DiscountFilterPercentInvalidException();
    }

    if (filter.maxPercent != null &&
        (filter.maxPercent! < 1 || filter.maxPercent! > 100)) {
      throw DiscountFilterPercentInvalidException();
    }

    if (filter.minPercent != null &&
        filter.maxPercent != null &&
        filter.minPercent! > filter.maxPercent!) {
      throw DiscountFilterPercentRangeInvalidException();
    }
  }

  // ------------------------------------------------------
  // Status validation
  // ------------------------------------------------------

  void _validateStatus() {
    const allowedStatuses = ['active', 'inactive', 'expired'];

    if (filter.status != null &&
        !allowedStatuses.contains(filter.status)) {
      throw DiscountFilterStatusInvalidException();
    }
  }
}
