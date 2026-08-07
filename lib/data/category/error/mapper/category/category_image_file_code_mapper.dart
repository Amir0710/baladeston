import 'package:baladeston/data/category/api/error_codes/category/category_image_file_error_code.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_model_image_file_failure.dart';

class CategoryImageFileCodeMapper {
  const CategoryImageFileCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    codes.CategoryModelImageFileErrorCodes.tooLarge: () =>
        const CategoryModelImageFileSizeNotValidFailure(),
    codes.CategoryModelImageFileErrorCodes.invalidFormat: () =>
        const CategoryModelImageFileInvalidFormatFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    final factory = _map[code];
    return factory?.call();
  }
}
