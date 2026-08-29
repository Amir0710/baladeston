import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountModelFilterFailure
    extends BaseDiscountServerValidationFailure {
  const DiscountModelFilterFailure();
}

class DiscountModelFilterInvalidUserIdFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidUserIdFailure();
}

class DiscountModelFilterInvalidCategoryIdFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidCategoryIdFailure();
}

class DiscountModelFilterInvalidMinPercentFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidMinPercentFailure();
}

class DiscountModelFilterInvalidMaxPercentFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidMaxPercentFailure();
}

class DiscountModelFilterInvalidStatusFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidStatusFailure();
}

class DiscountModelFilterInvalidExpiresAtFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidExpiresAtFailure();
}

class DiscountModelFilterInvalidLimitFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidLimitFailure();
}

class DiscountModelFilterInvalidOffsetFailure
    extends DiscountModelFilterFailure {
  const DiscountModelFilterInvalidOffsetFailure();
}
