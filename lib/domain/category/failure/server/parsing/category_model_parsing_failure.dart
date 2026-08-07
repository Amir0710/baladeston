import 'package:baladeston/domain/category/failure/base_category_failure.dart';

class CategoryModelParsingFailure extends BaseCategoryModelParsingFailure {
  final String? debugMessage;
  final String? rawSource;

  const CategoryModelParsingFailure({
    this.debugMessage,
    this.rawSource,
  });
}
