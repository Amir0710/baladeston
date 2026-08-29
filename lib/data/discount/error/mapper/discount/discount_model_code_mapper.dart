import 'package:baladeston/data/discount/api/error_codes/discount/discount_model_error_code.dart' as codes;
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/server/code/discount_model_failure.dart';

final class DiscountModelCodeMapper {
  const DiscountModelCodeMapper();

  static final Map<String, DiscountFailure Function()> _registry = {
    codes.DiscountModelErrorCodes.invalidId: () => const DiscountModelInvalidIdFailure(),
    codes.DiscountModelErrorCodes.invalidUserId: () => const DiscountModelInvalidUserIdFailure(),
    codes.DiscountModelErrorCodes.invalidCode: () => const DiscountModelInvalidCodeFailure(),
    codes.DiscountModelErrorCodes.invalidTitle: () => const DiscountModelInvalidTitleFailure(),
    codes.DiscountModelErrorCodes.invalidAmount: () => const DiscountModelInvalidAmountFailure(),
    codes.DiscountModelErrorCodes.invalidPercent: () => const DiscountModelInvalidPercentFailure(),
    codes.DiscountModelErrorCodes.invalidType: () => const DiscountModelInvalidTypeFailure(),
    codes.DiscountModelErrorCodes.invalidTargetId: () => const DiscountModelInvalidTargetIdFailure(),
    codes.DiscountModelErrorCodes.invalidMinOrderAmount: () => const DiscountModelInvalidMinOrderAmountFailure(),
    codes.DiscountModelErrorCodes.invalidFirstOrderOnly: () => const DiscountModelInvalidFirstOrderOnlyFailure(),
    codes.DiscountModelErrorCodes.invalidStatus: () => const DiscountModelInvalidStatusFailure(),
    codes.DiscountModelErrorCodes.invalidCreatedAt: () => const DiscountModelInvalidCreatedAtFailure(),
    codes.DiscountModelErrorCodes.invalidExpiresAt: () => const DiscountModelInvalidExpiresAtFailure(),
    codes.DiscountModelErrorCodes.invalidMaxUse: () => const DiscountModelInvalidMaxUseFailure(),
    codes.DiscountModelErrorCodes.invalidUsage: () => const DiscountModelInvalidUsageFailure(),
    codes.DiscountModelErrorCodes.missingField: () => const DiscountModelMissingField(),
  };

  static DiscountFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
