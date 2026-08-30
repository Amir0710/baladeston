import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountFilterFailure extends BaseDiscountValidationFailure {
  const DiscountFilterFailure();
}

final class DiscountFilterLimitFailure extends DiscountFilterFailure {
  const DiscountFilterLimitFailure();
}

final class DiscountFilterSearchTermTooShortFailure extends DiscountFilterFailure {
  const DiscountFilterSearchTermTooShortFailure();
}

final class DiscountFilterSearchTermTooLongFailure extends DiscountFilterFailure {
  const DiscountFilterSearchTermTooLongFailure();
}

final class DiscountFilterInvalidPercentRangeFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidPercentRangeFailure();
}

final class DiscountFilterEmptyFailure extends DiscountFilterFailure {
  const DiscountFilterEmptyFailure();
}
