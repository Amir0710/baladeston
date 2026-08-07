import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_filter_failure.dart';

class UpdateCategoryItemByFilterUsecaseBusinessRule {
  final CategoryItemEntity item;
  final CategoryItemQueryFilter filter;

  static const Limits _limits = Limits();

  const UpdateCategoryItemByFilterUsecaseBusinessRule({
    required this.item,
    required this.filter,
  });

  Result<void, CategoryFailure> validate() {
    late Result<void, CategoryFailure> result;

    _filterValidation().when(
      success: (_) {
        result = _entityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, CategoryItemFilterFailure> _filterValidation() {
    if (filter.limit < _limits.minFilterLimitSize ||
        filter.limit > _limits.maxFilterLimitSize) {
      return Result.failure(CategoryItemFilterInvalidLimitFailure());
    }
    if (filter.offset < 0) {
      return Result.failure(CategoryItemFilterInvalidOffsetFailure());
    }

    if (filter.collectionId != null && filter.collectionId! < 0) {
      return Result.failure(CategoryItemFilterInvalidCollectionIdFailure());
    }
    if (filter.adderId != null && filter.adderId! < 0) {
      return Result.failure(CategoryItemFilterInvalidAdderIdFailure());
    }
    if (filter.categoryId != null && filter.categoryId! < 0) {
      return Result.failure(CategoryItemFilterInvalidCategoryIdFailure());
    }
    return const Result.success(null);
  }

  Result<void, CategoryItemEntityFailure> _entityValidation() {
    if (item.adderId <= 0) {
      return Result.failure(CategoryItemEntityMissingAdderIdFailure());
    }
    if (item.collectionId < 0) {
      return Result.failure(CategoryItemEntityInvalidCollectionIdFailure());
    }
    if (item.categoryId < 0) {
      return Result.failure(CategoryItemEntityInvalidCategoryIdFailure());
    }

    return Result.success(null);
  }
}
