import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountIdFailure extends BaseDiscountValidationFailure {
  const DiscountIdFailure();
}

// id
class DiscountIdMissingFailure extends DiscountIdFailure {
  const DiscountIdMissingFailure();
}

class DiscountIdInvalidFailure extends DiscountIdFailure {
  const DiscountIdInvalidFailure();
}
