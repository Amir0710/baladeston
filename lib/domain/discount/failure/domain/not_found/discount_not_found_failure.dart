import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

class DiscountNotFoundFailure extends BaseDiscountNotFoundFailure {
  const DiscountNotFoundFailure();
}

class DiscountModelNotFoundFailure extends DiscountNotFoundFailure {
  const DiscountModelNotFoundFailure();
}
