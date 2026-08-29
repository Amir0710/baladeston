import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';

class CreateDiscountUseCaseBusinessRule {
  final DiscountEntity discount;

  const CreateDiscountUseCaseBusinessRule({
    required this.discount,
  });

  void validate() {
    _validateRequiredFields();
    _validateIds();
    _validatePercent();
    _validateUsage();
    _validateStatus();
    _validateExpiration();
  }

  // ------------------------------------------------------
  // Required fields
  // ------------------------------------------------------

  void _validateRequiredFields() {
    if (discount.percent == null) {
      throw DiscountEntityPercentRequiredException();
    }

    if (discount.userId == null) {
      throw DiscountEntityUserRequiredException();
    }
  }

  // ------------------------------------------------------
  // Id validations
  // ------------------------------------------------------

  void _validateIds() {
    if (discount.id != null && discount.id! <= 0) {
      throw DiscountEntityIdInvalidException();
    }

    if (discount.userId != null && discount.userId! <= 0) {
      throw DiscountEntityUserIdInvalidException();
    }
  }

  // ------------------------------------------------------
  // Percent validation
  // ------------------------------------------------------

  void _validatePercent() {
    if (discount.percent != null &&
        (discount.percent < 1 || discount.percent > 100)) {
      throw DiscountEntityPercentInvalidException();
    }
  }

  // ------------------------------------------------------
  // Usage validations
  // ------------------------------------------------------

  void _validateUsage() {
    if (discount.maxUse != null && discount.maxUse! <= 0) {
      throw DiscountEntityMaxUseInvalidException();
    }

    if (discount.usage != null && discount.usage! < 0) {
      throw DiscountEntityUsageInvalidException();
    }

    if (discount.maxUse != null &&
        discount.usage != null &&
        discount.usage! > discount.maxUse!) {
      throw DiscountEntityUsageGreaterThanMaxException();
    }
  }

  // ------------------------------------------------------
  // Status validation
  // ------------------------------------------------------

  void _validateStatus() {
    const allowedStatuses = ['active', 'inactive', 'expired'];

    if (discount.status != null && !allowedStatuses.contains(discount.status)) {
      throw DiscountEntityStatusInvalidException();
    }
  }

  // ------------------------------------------------------
  // Expiration / business constraints
  // ------------------------------------------------------

  void _validateExpiration() {}
}
