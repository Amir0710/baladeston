import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountModelIdFailure
    extends BaseDiscountServerValidationFailure {
  const DiscountModelIdFailure();
}

class DiscountModelIdInvalidIdFailure extends DiscountModelIdFailure {
  const DiscountModelIdInvalidIdFailure();
}
