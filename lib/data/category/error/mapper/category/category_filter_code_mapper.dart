import 'package:baladeston/data/category/api/error_codes/category/category_filter_error_code.dart'
as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_model_filter_failure.dart';

class CategoryFilterCodeMapper {
  const CategoryFilterCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    // searchTerm
    codes.CategoryModelFilterErrorCodes.invalidSearchTerm: () =>
    const CategoryModelFilterInvalidSearchTermFailure(),

    // searchId
    codes.CategoryModelFilterErrorCodes.invalidSearchId: () =>
    const CategoryModelFilterInvalidSearchIdFailure(),

    // status
    codes.CategoryModelFilterErrorCodes.invalidStatus: () =>
    const CategoryModelFilterInvalidStatusFailure(),

    // ownerId
    codes.CategoryModelFilterErrorCodes.invalidOwnerId: () =>
    const CategoryModelFilterInvalidOwnerIdFailure(),

    // minCount / maxCount
    codes.CategoryModelFilterErrorCodes.invalidMinCount: () =>
    const CategoryModelFilterInvalidMinCountFailure(),
    codes.CategoryModelFilterErrorCodes.invalidMaxCount: () =>
    const CategoryModelFilterInvalidMaxCountFailure(),
    codes.CategoryModelFilterErrorCodes.invalidCountRange: () =>
    const CategoryModelFilterInvalidCountRangeFailure(),

    // limit
    codes.CategoryModelFilterErrorCodes.invalidLimit: () =>
    const CategoryModelFilterInvalidLimitFailure(),

    // offset
    codes.CategoryModelFilterErrorCodes.invalidOffset: () =>
    const CategoryModelFilterInvalidOffsetFailure(),

    // ascending
    codes.CategoryModelFilterErrorCodes.invalidAscending: () =>
    const CategoryModelFilterInvalidAscendingFailure(),

    // order
    codes.CategoryModelFilterErrorCodes.invalidOrder: () =>
    const CategoryModelFilterInvalidOrderFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
