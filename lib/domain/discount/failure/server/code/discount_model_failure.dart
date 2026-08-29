import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountModelFailure
    extends BaseDiscountServerValidationFailure {
  const DiscountModelFailure();
}

// id
class DiscountModelInvalidIdFailure extends DiscountModelFailure {
  const DiscountModelInvalidIdFailure();
}

// userId
class DiscountModelInvalidUserIdFailure extends DiscountModelFailure {
  const DiscountModelInvalidUserIdFailure();
}

// code
class DiscountModelInvalidCodeFailure extends DiscountModelFailure {
  const DiscountModelInvalidCodeFailure();
}

// title
class DiscountModelInvalidTitleFailure extends DiscountModelFailure {
  const DiscountModelInvalidTitleFailure();
}

// amount
class DiscountModelInvalidAmountFailure extends DiscountModelFailure {
  const DiscountModelInvalidAmountFailure();
}

// percent
class DiscountModelInvalidPercentFailure extends DiscountModelFailure {
  const DiscountModelInvalidPercentFailure();
}

// type
class DiscountModelInvalidTypeFailure extends DiscountModelFailure {
  const DiscountModelInvalidTypeFailure();
}

// targetId
class DiscountModelInvalidTargetIdFailure extends DiscountModelFailure {
  const DiscountModelInvalidTargetIdFailure();
}

// minOrderAmount
class DiscountModelInvalidMinOrderAmountFailure extends DiscountModelFailure {
  const DiscountModelInvalidMinOrderAmountFailure();
}

// firstOrderOnly
class DiscountModelInvalidFirstOrderOnlyFailure extends DiscountModelFailure {
  const DiscountModelInvalidFirstOrderOnlyFailure();
}

// status
class DiscountModelInvalidStatusFailure extends DiscountModelFailure {
  const DiscountModelInvalidStatusFailure();
}

// createdAt
class DiscountModelInvalidCreatedAtFailure extends DiscountModelFailure {
  const DiscountModelInvalidCreatedAtFailure();
}

// expiresAt
class DiscountModelInvalidExpiresAtFailure extends DiscountModelFailure {
  const DiscountModelInvalidExpiresAtFailure();
}

// maxUse
class DiscountModelInvalidMaxUseFailure extends DiscountModelFailure {
  const DiscountModelInvalidMaxUseFailure();
}

// usage
class DiscountModelInvalidUsageFailure extends DiscountModelFailure {
  const DiscountModelInvalidUsageFailure();
}

// missing
class DiscountModelMissingField extends DiscountModelFailure {
  const DiscountModelMissingField();
}
