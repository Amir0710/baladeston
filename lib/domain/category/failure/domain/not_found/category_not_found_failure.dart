import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryNotFoundFailure extends BaseCategoryNotFoundFailure {
  const CategoryNotFoundFailure();
}

abstract class CategoryModelNotFoundFailure extends CategoryNotFoundFailure {
  const CategoryModelNotFoundFailure();
}

abstract class CategoryItemModelNotFoundFailure
    extends CategoryNotFoundFailure {
  const CategoryItemModelNotFoundFailure();
}
