import 'package:baladeston/data/discount/api/error_codes/discount/discount_filter_error_code.dart' as codes;
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/server/code/discount_model_filter_failure.dart';

final class DiscountFilterCodeMapper {
  const DiscountFilterCodeMapper();

  static final Map<String, DiscountFailure Function()> _registry = {
    codes.DiscountFilterErrorCodes.invalidUserId: () => const DiscountModelFilterInvalidUserIdFailure(),
    codes.DiscountFilterErrorCodes.invalidCategoryId: () => const DiscountModelFilterInvalidCategoryIdFailure(),
    codes.DiscountFilterErrorCodes.invalidMinPercent: () => const DiscountModelFilterInvalidMinPercentFailure(),
    codes.DiscountFilterErrorCodes.invalidMaxPercent: () => const DiscountModelFilterInvalidMaxPercentFailure(),
    codes.DiscountFilterErrorCodes.invalidStatus: () => const DiscountModelFilterInvalidStatusFailure(),
    codes.DiscountFilterErrorCodes.invalidExpiresAt: () => const DiscountModelFilterInvalidExpiresAtFailure(),
    codes.DiscountFilterErrorCodes.invalidLimit: () => const DiscountModelFilterInvalidLimitFailure(),
    codes.DiscountFilterErrorCodes.invalidOffset: () => const DiscountModelFilterInvalidOffsetFailure(),
  };

  static DiscountFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
