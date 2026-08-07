import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_filter_failure.dart';

class DeleteCategoryItemByFilterUsecaseBusinessRule {
  static const Limits _limits = Limits();

  const DeleteCategoryItemByFilterUsecaseBusinessRule({required this.filter});

  final CategoryItemQueryFilter filter;

  Result<void, CategoryItemFilterFailure> validate() {
    return _filterValidation();
  }

  Result<void, CategoryItemFilterFailure> _filterValidation() {
    if (filter.limit < _limits.minFilterLimitSize ||
        filter.limit > _limits.maxFilterLimitSize) {
      return Result.failure(CategoryItemFilterInvalidLimitFailure());
    }
    if (filter.offset < 0) {
      return Result.failure(CategoryItemFilterInvalidOffsetFailure());
    }
    if (filter.collectionId! < 0) {
      return Result.failure(CategoryItemFilterInvalidCollectionIdFailure());
    }
    if (filter.adderId! < 0) {
      return Result.failure(CategoryItemFilterInvalidAdderIdFailure());
    }
    if (filter.categoryId! < 0) {
      return Result.failure(CategoryItemFilterInvalidCategoryIdFailure());
    }

    return Result.success(null);
  }
}
