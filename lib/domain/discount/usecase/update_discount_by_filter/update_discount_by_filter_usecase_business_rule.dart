import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/exception/discount_filter_exception.dart';

class UpdateDiscountByFilterUsecaseBusinessRule {
  final DiscountQueryFilter filter;
  final DiscountEntity discount;

  const UpdateDiscountByFilterUsecaseBusinessRule({
    required this.filter,
    required this.discount,
  });

  void validate() {
    _validateFilter();
    _validateDiscount();
  }

  // ------------------------------------------------------
  // Filter validations (VERY IMPORTANT)
  // ------------------------------------------------------

  void _validateFilter() {
    _validateEmptyFilter();
    _validateIds();
    _validatePercentRange();
    _validateStatus();
  }

  void _validateEmptyFilter() {
    final hasAnyFilter = filter.id != null ||
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

  void _validateStatus() {
    const allowedStatuses = ['active', 'inactive', 'expired'];

    if (filter.status != null && !allowedStatuses.contains(filter.status)) {
      throw DiscountEntityStatusInvalidException();
    }
  }

  // ------------------------------------------------------
  // Discount (Update Payload) validations
  // ------------------------------------------------------

  void _validateDiscount() {
    _validateUpdatableFields();
    _validatePercent();
    _validateUsage();
    _validateStatusConsistency();
  }

  void _validateUpdatableFields() {
    final hasAnyUpdatableField = discount.percent != null ||
        discount.maxUse != null ||
        discount.usage != null ||
        discount.status != null;

    if (!hasAnyUpdatableField) {
      throw DiscountFilterEmptyException();
    }
  }

  void _validatePercent() {
    if (discount.percent != null &&
        (discount.percent < 1 || discount.percent > 100)) {
      throw DiscountEntityPercentInvalidException();
    }
  }

  void _validateUsage() {
    if (discount.maxUse != null && discount.maxUse! <= 0) {
      throw DiscountEntityUsageInvalidException();
    }

    if (discount.usage != null && discount.usage! < 0) {
      throw DiscountEntityUsageInvalidException();
    }

    if (discount.maxUse != null &&
        discount.usage != null &&
        discount.usage! > discount.maxUse!) {
      throw DiscountEntityUsageInvalidException();
    }
  }

  void _validateStatusConsistency() {
    // if (discount.isExpired == true && discount.isActive == true) {
    //   throw DiscountEntityStatusInvalidException();
    // }
  }
}
