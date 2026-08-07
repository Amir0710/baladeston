import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/exception/discount_filter_exception.dart';

class CountDiscountUsecaseBusinessRule {
  final DiscountQueryFilter filter;

  const CountDiscountUsecaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateLimit();
    _validateOffset();
    _validateMinMaxPercent();
    _validateStatus();
    _validateEmptyFilter();
  }

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

  void _validateMinMaxPercent() {
    if (filter.minPercent != null &&
        filter.maxPercent != null &&
        filter.minPercent! > filter.maxPercent!) {
      throw DiscountEntityPercentInvalidException();
    }
  }

  void _validateStatus() {
    const allowedStatuses = ['active', 'inactive', 'expired'];

    if (filter.status != null &&
        !allowedStatuses.contains(filter.status)) {
      throw DiscountFilterStatusInvalidException();
    }
  }

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
