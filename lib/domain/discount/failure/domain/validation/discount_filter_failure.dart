import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountFilterFailure extends BaseDiscountValidationFailure {
  const DiscountFilterFailure();
}

// Base Empty Filter Failure
final class DiscountFilterEmptyFailure extends DiscountFilterFailure {
  const DiscountFilterEmptyFailure();
}

// ids
final class DiscountFilterInvalidIdsFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidIdsFailure();
}

// target id
final class DiscountFilterInvalidTargetIdFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidTargetIdFailure();
}
// owner id
final class DiscountFilterInvalidOwnerIdFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidOwnerIdFailure();
}

// Search Term
final class DiscountFilterTooShortTitleFailure extends DiscountFilterFailure {
  const DiscountFilterTooShortTitleFailure();
}

final class DiscountFilterTooLongTitleFailure extends DiscountFilterFailure {
  const DiscountFilterTooLongTitleFailure();
}

final class DiscountFilterControlCharTitleFailure extends DiscountFilterFailure {
  const DiscountFilterControlCharTitleFailure();
}

final class DiscountFilterContainsHtmlTitleFailure extends DiscountFilterFailure {
  const DiscountFilterContainsHtmlTitleFailure();
}

final class DiscountFilterEmojiOnlyTitleFailure extends DiscountFilterFailure {
  const DiscountFilterEmojiOnlyTitleFailure();
}

// Percentage (minPercent / maxPercent)
final class DiscountFilterInvalidMinPercentFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidMinPercentFailure();
}

final class DiscountFilterInvalidMaxPercentFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidMaxPercentFailure();
}

final class DiscountFilterInvalidPercentRangeFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidPercentRangeFailure();
}

// Usage Limits (maxUse / usage)
final class DiscountFilterInvalidMaxUseFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidMaxUseFailure();
}

final class DiscountFilterInvalidUsageFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidUsageFailure();
}

final class DiscountFilterUsageExceedsMaxUseFailure extends DiscountFilterFailure {
  const DiscountFilterUsageExceedsMaxUseFailure();
}

// Dates
final class DiscountFilterInvalidCreatedAtFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidCreatedAtFailure();
}

final class DiscountFilterInvalidExpiresAtFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidExpiresAtFailure();
}

final class DiscountFilterInvalidDatesRangeFailure extends DiscountFilterFailure {
  const DiscountFilterInvalidDatesRangeFailure();
}
