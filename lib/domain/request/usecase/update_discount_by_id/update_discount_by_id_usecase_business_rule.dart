import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';

class UpdateDiscountByIdUsecaseBusinessRule {
  final int id;
  final DiscountEntity discount;

  const UpdateDiscountByIdUsecaseBusinessRule({
    required this.id,
    required this.discount,
  });

  void validate() {
    _validateId();
    _validateDiscount();
  }

  // ------------------------------------------------------
  // Id validation
  // ------------------------------------------------------

  void _validateId() {
    if (id <= 0) {
      throw DiscountEntityIdInvalidException();
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
    final hasAnyUpdatableField =
        discount.percent != null ||
            discount.maxUse != null ||
            discount.usage != null ||
            discount.status != null;

    if (!hasAnyUpdatableField) {
      throw DiscountEntityNoUpdatableFieldsException();
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
