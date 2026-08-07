import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_entity_failure.dart';

class AddCategoryItemUsecaseBusinessRule {
  final CategoryItemEntity item;

  const AddCategoryItemUsecaseBusinessRule({required this.item});

  Result<void, CategoryItemEntityFailure> validate() {
    return _entityValidation();
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
