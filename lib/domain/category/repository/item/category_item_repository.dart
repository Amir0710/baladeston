import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';

import 'package:image_picker/image_picker.dart';

abstract class CategoryItemRepository {

  Future<Result<CategoryItemEntity, CategoryFailure>> addCategoryItem({
    required CategoryItemEntity item,
  });

  Future<Result<CategoryItemEntity, CategoryFailure>> updateCategoryItemById({
    required int id,
    required CategoryItemEntity item,
  });

  Future<Result<int, CategoryFailure>> updateCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
    required CategoryItemEntity item,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryItemById({
    required int itemId,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
  });

  Future<Result<PaginatedResponseModel<CollectionEntity>, CategoryFailure>>
      getCollectionsByCategoryItemFilter({
    required CategoryItemQueryFilter categoryItemFilter,
    required CollectionQueryFilter collectionFilter,
  });

  Future<Result<PaginatedResponseModel<CategoryItemEntity>, CategoryFailure>>
  getCategoryItemByFilter({
    required CategoryItemQueryFilter categoryItemFilter,
  });

  Future<Result<CategoryItemEntity, CategoryFailure>>
  getCategoryItemById({
    required int itemId,
  });

  Future<Result<String, CategoryFailure>> uploadCategoryItemImage({
    required XFile image,
  });
}
