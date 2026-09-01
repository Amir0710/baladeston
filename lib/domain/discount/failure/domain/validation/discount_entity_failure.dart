import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountEntityFailure extends BaseDiscountValidationFailure {
  const DiscountEntityFailure();
}

// Code
final class DiscountEntityMissingCodeFailure extends DiscountEntityFailure {
  const DiscountEntityMissingCodeFailure();
}
final class DiscountEntityCodeTooShortFailure extends DiscountEntityFailure {
  const DiscountEntityCodeTooShortFailure();
}
final class DiscountEntityCodeTooLongFailure extends DiscountEntityFailure {
  const DiscountEntityCodeTooLongFailure();
}
final class DiscountEntityCodeContainsHtmlFailure extends DiscountEntityFailure {
  const DiscountEntityCodeContainsHtmlFailure();
}
final class DiscountEntityCodeEmojiOnlyFailure extends DiscountEntityFailure {
  const DiscountEntityCodeEmojiOnlyFailure();
}
final class DiscountEntityCodeControlCharFailure extends DiscountEntityFailure {
  const DiscountEntityCodeControlCharFailure();
}

// Title
final class DiscountEntityTitleTooShortFailure extends DiscountEntityFailure {
  const DiscountEntityTitleTooShortFailure();
}
final class DiscountEntityTitleTooLongFailure extends DiscountEntityFailure {
  const DiscountEntityTitleTooLongFailure();
}
final class DiscountEntityTitleContainsHtmlFailure extends DiscountEntityFailure {
  const DiscountEntityTitleContainsHtmlFailure();
}
final class DiscountEntityTitleEmojiOnlyFailure extends DiscountEntityFailure {
  const DiscountEntityTitleEmojiOnlyFailure();
}
final class DiscountEntityTitleControlCharFailure extends DiscountEntityFailure {
  const DiscountEntityTitleControlCharFailure();
}

// target id
final class DiscountTargetIdInvalidFailure extends DiscountEntityFailure {
  const DiscountTargetIdInvalidFailure();
}

// Amount & Percent
final class DiscountEntityMissingPercentFailure extends DiscountEntityFailure {
  const DiscountEntityMissingPercentFailure();
}
final class DiscountEntityInvalidAmountFailure extends DiscountEntityFailure {
  const DiscountEntityInvalidAmountFailure();
}
final class DiscountEntityInvalidPercentFailure extends DiscountEntityFailure {
  const DiscountEntityInvalidPercentFailure();
}

// MinOrderAmount
final class DiscountEntityInvalidMinOrderAmountFailure extends DiscountEntityFailure {
  const DiscountEntityInvalidMinOrderAmountFailure();
}

// Expiration
final class DiscountEntityExpirationTooFarFailure extends DiscountEntityFailure {
  const DiscountEntityExpirationTooFarFailure();
}
final class DiscountEntityExpiredFailure extends DiscountEntityFailure {
  const DiscountEntityExpiredFailure();
}

// MaxUse
final class DiscountEntityInvalidMaxUseFailure extends DiscountEntityFailure {
  const DiscountEntityInvalidMaxUseFailure();
}
