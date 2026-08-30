import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountIdFailure extends BaseDiscountValidationFailure {
  const DiscountIdFailure();
}

final class DiscountIdInvalidFailure extends DiscountIdFailure {
  const DiscountIdInvalidFailure();
}

final class DiscountOwnerIdInvalidFailure extends DiscountIdFailure {
  const DiscountOwnerIdInvalidFailure();
}

final class DiscountTargetIdInvalidFailure extends DiscountIdFailure {
  const DiscountTargetIdInvalidFailure();
}
