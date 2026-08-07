import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/data/category/model/category_item_model/category_item_model.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/collection/model/collection_model/collection_model.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemApi {
  Future<Result<CategoryItemModel, CategoryFailure>> addCategoryItem({
    required CategoryItemModel item,
  });

  Future<Result<CategoryItemModel, CategoryFailure>> updateCategoryItemById({
    required int id,
    required CategoryItemModel item,
  });

  Future<Result<int, CategoryFailure>> updateCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
    required CategoryItemModel item,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryItemById({
    required int itemId,
  });

  Future<Result<List<int>, CategoryFailure>> deleteCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
  });

  Future<Result<List<CollectionModel>, CategoryFailure>>
  getCollectionsByCategoryItemFilter({
    required CategoryItemQueryFilter categoryItemFilter,
    required CollectionQueryFilter collectionFilter,
  });

  Future<Result<List<CategoryItemModel>, CategoryFailure>>
  getCategoryItemByFilter({
    required CategoryItemQueryFilter categoryItemFilter,
  });

  Future<Result<CategoryItemModel, CategoryFailure>> getCategoryItemById({
    required int itemId,
  });
}
