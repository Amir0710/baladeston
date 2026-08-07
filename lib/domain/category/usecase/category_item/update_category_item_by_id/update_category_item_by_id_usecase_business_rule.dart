import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_id_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_id_failure.dart';

class UpdateCategoryItemByIdUsecaseBusinessRule {
  const UpdateCategoryItemByIdUsecaseBusinessRule({
    required this.id,
    required this.item,
  });

  final int id;
  final CategoryItemEntity item;

  Result<void, CategoryFailure> validate() {
    late Result<void, CategoryFailure> result;

    _idValidation().when(success: (_) {
      result = _entityValidation();
    }, failure: (failure) {
      Result.failure(failure);
    });
    return result;
  }

  Result<void, CategoryItemIdFailure> _idValidation() {
    if (id < 0) {
      return Result.failure(CategoryItemIdInvalidFailure());
    }
    return Result.success(null);
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
  }}
