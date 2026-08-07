import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_filter_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_id_failure.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

class CategoryItemWithCollectionFailure extends BaseCategoryValidationFailure {
  final CategoryItemFilterFailure? categoryItemFilterFailure;
  final CollectionFailure? collectionFailure;

  const CategoryItemWithCollectionFailure({
    this.collectionFailure,
    this.categoryItemFilterFailure,
  });
}
