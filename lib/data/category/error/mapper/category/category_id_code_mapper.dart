import 'package:baladeston/data/category/api/error_codes/category/category_id_error_code.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_model_id_failure.dart';

class CategoryIdCodeMapper {
  const CategoryIdCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    codes.CategoryModelIdErrorCode.required: () => const CategoryModelIdMissingFailure(),
    codes.CategoryModelIdErrorCode.invalid: () => const CategoryModelIdInvalidFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    final factory = _map[code];
    return factory?.call();
  }
}
