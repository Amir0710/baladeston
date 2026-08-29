import 'package:baladeston/data/discount/api/error_codes/discount/discount_id_error_code.dart' as codes;
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/server/code/discount_model_id_failure.dart';

final class DiscountIdCodeMapper {
  const DiscountIdCodeMapper();

  static final Map<String, DiscountFailure Function()> _registry = {
    codes.DiscountIdErrorCodes.invalidId: () => const DiscountModelIdInvalidIdFailure(),
  };

  static DiscountFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
