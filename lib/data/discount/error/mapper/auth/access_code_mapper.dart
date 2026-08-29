import 'package:baladeston/data/discount/api/error_codes/auth/discount_access_error_code.dart'
    as codes;
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/auth/discount_authorization_failure.dart';

class DiscountAccessCodeMapper {
  const DiscountAccessCodeMapper();

  static final Map<String, DiscountFailure Function()> _map = {
    codes.DiscountAccessErrorCodes.forbidden: () =>
        const DiscountAccessForbiddenFailure() as DiscountFailure,
    codes.DiscountAccessErrorCodes.adminRequired: () =>
        const DiscountAccessAdminRequiredFailure() as DiscountFailure,
    codes.DiscountAccessErrorCodes.moderatorRequired: () =>
        const DiscountAccessModeratorRequiredFailure() as DiscountFailure,
    codes.DiscountAccessErrorCodes.premiumRequired: () =>
        const DiscountAccessPremiumRequiredFailure() as DiscountFailure,
    codes.DiscountAccessErrorCodes.notOwner: () =>
        const DiscountAccessNotOwnerFailure() as DiscountFailure,
    codes.DiscountAccessErrorCodes.resourcePrivate: () =>
        const DiscountAccessResourcePrivateFailure() as DiscountFailure,
    codes.DiscountAccessErrorCodes.operationNotAllowed: () =>
        const DiscountAccessOperationNotAllowedFailure() as DiscountFailure,
  };

  static DiscountFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
