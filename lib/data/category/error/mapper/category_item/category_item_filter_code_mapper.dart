import 'package:baladeston/data/category/api/error_codes/category_item/category_item_filter_error_codes.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_item_model_filter_failure.dart';

class CategoryItemFilterCodeMapper {
  const CategoryItemFilterCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    // categoryId
    codes.CategoryItemModelFilterErrorCodes.invalidCategoryId: () =>
        const CategoryItemModelFilterInvalidCategoryIdFailure(),

    // status
    codes.CategoryItemModelFilterErrorCodes.invalidStatus: () =>
        const CategoryItemModelFilterInvalidStatusFailure(),

    // limit
    codes.CategoryItemModelFilterErrorCodes.invalidLimit: () =>
        const CategoryItemModelFilterInvalidLimitFailure(),

    // offset

    codes.CategoryItemModelFilterErrorCodes.invalidOffset: () =>
        const CategoryItemModelFilterInvalidOffsetFailure(),

    // ascending

    codes.CategoryItemModelFilterErrorCodes.invalidAscending: () =>
        const CategoryItemModelFilterInvalidAscendingFailure(),

    // order
    codes.CategoryItemModelFilterErrorCodes.invalidOrder: () =>
        const CategoryItemModelFilterInvalidOrderFailure(),
    // general
    codes.CategoryItemModelFilterErrorCodes.filterEmpty: () =>
        const CategoryItemModelFilterEmptyFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
