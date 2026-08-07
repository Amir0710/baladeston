import 'package:baladeston/data/category/api/error_codes/category/category_image_url_error_code.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_model_image_url_failure.dart';

class CategoryImageUrlCodeMapper {
  const CategoryImageUrlCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    codes.CategoryModelImageUrlErrorCodes.emptyUrl: () =>
        const CategoryModelImageUrlEmptyUrlFailure(),
    codes.CategoryModelImageUrlErrorCodes.invalidFormat: () =>
        const CategoryModelImageUrlInvalidFormatFailure(),
    codes.CategoryModelImageUrlErrorCodes.unsupportedScheme: () =>
        const CategoryModelImageUrlUnsupportedSchemeFailure(),
    codes.CategoryModelImageUrlErrorCodes.unauthorizedHost: () =>
        const CategoryModelImageUrlUnauthorizedHostFailure(),
    codes.CategoryModelImageUrlErrorCodes.invalidId: () =>
        const CategoryModelImageUrlInvalidIdFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    final factory = _map[code];
    return factory?.call();
  }
}
