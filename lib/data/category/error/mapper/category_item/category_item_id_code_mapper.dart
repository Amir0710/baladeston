import 'package:baladeston/data/category/api/error_codes/category_item/category_item_id_error_codes.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_item_model_id_failure.dart';

final class CategoryItemIdCodeMapper {
  const CategoryItemIdCodeMapper();

  static final Map<String, CategoryFailure Function()> _registry = {
    codes.CategoryItemModelIdErrorCodes.required: () =>
        const CategoryItemModelIdRequiredFailure(),
    codes.CategoryItemModelIdErrorCodes.invalid: () =>
        const CategoryItemModelIdInvalidFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    final factory = _registry[code];
    return factory?.call();
  }
}
