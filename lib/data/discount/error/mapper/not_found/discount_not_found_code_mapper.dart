import 'package:baladeston/data/discount/api/error_codes/not_found/discount_not_found_error_code.dart'
    as codes;
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/not_found/discount_not_found_failure.dart';

final class DiscountNotFoundCodeMapper {
  const DiscountNotFoundCodeMapper();

  static final Map<String, DiscountFailure Function()> _registry = {
    codes.DiscountNotFoundErrorCode.discountNotFound: () =>
        const DiscountModelNotFoundFailure(),
  };

  static DiscountFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
