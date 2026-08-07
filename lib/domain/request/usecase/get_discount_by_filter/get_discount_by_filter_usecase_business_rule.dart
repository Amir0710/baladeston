import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/exception/discount_filter_exception.dart';

class GetDiscountByFilterUsecaseBusinessRule {
  final DiscountQueryFilter filter;

  const GetDiscountByFilterUsecaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateLimit();
    _validateOffset();
    _validateIds();
    _validatePercentRange();
    _validateStatus();
    _validateEmptyFilter();
  }

  // ------------------------------------------------------
  // Pagination
  // ------------------------------------------------------

  void _validateLimit() {
    if (filter.limit <= 0) {
      throw DiscountFilterLimitException();
    }
  }

  void _validateOffset() {
    if (filter.offset < 0) {
      throw DiscountFilterOffsetException();
    }
  }

  // ------------------------------------------------------
  // Id validations
  // ------------------------------------------------------

  void _validateIds() {
    if (filter.id != null && filter.id! <= 0) {
      throw DiscountEntityIdInvalidException();
    }

    if (filter.userId != null && filter.userId! <= 0) {
      throw DiscountEntityUserIdInvalidException();
    }

    if (filter.categoryId != null && filter.categoryId! <= 0) {
      throw DiscountEntityCategoryInvalidException();
    }

    if (filter.videoId != null && filter.videoId! <= 0) {
      throw DiscountEntityVideoIdInvalidException();
    }
  }

  // ------------------------------------------------------
  // Percent range validation
  // ------------------------------------------------------

  void _validatePercentRange() {
    if (filter.minPercent != null &&
        (filter.minPercent! < 1 || filter.minPercent! > 100)) {
      throw DiscountEntityPercentInvalidException();
    }

    if (filter.maxPercent != null &&
        (filter.maxPercent! < 1 || filter.maxPercent! > 100)) {
      throw DiscountEntityPercentInvalidException();
    }

    if (filter.minPercent != null &&
        filter.maxPercent != null &&
        filter.minPercent! > filter.maxPercent!) {
      throw DiscountEntityPercentInvalidException();
    }
  }

  // ------------------------------------------------------
  // Status validation
  // ------------------------------------------------------

  void _validateStatus() {
    const allowedStatuses = ['active', 'inactive', 'expired'];

    if (filter.status != null &&
        !allowedStatuses.contains(filter.status)) {
      throw DiscountEntityStatusInvalidException();
    }
  }

  // ------------------------------------------------------
  // Prevent meaningless queries
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
}
