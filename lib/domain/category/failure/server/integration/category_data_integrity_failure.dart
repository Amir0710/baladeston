import 'package:baladeston/domain/category/failure/base_category_failure.dart';

class CategoryDataIntegrityFailure extends BaseCategoryDataIntegrityFailure {
  final String? debugMessage;
  final String? rawSource;

  const CategoryDataIntegrityFailure({
    this.debugMessage,
    this.rawSource,
  });
}
