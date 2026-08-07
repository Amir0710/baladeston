import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/data/category/mapper/item/category_item_mapper.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/collection/mapper/model/collection_mapper.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';

class CategoryItemRepositoryImplementation
    extends CategoryItemRepository {
  final CategoryItemApi _api;

  CategoryItemRepositoryImplementation({
    required CategoryItemApi api,
  }) : _api = api;

  @override
  Future<Result<CategoryItemEntity, CategoryFailure>> addCategoryItem({
    required CategoryItemEntity item,
  }) async {
    final result = await _api.addCategoryItem(
      item: item.toModel(),
    );

    return result.map(
      success: (success) => Result.success(
        success.data.toEntity(),
      ),
      failure: (failure) => Result.failure(
        failure.failure,
      ),
    );
  }

  @override
  Future<Result<CategoryItemEntity, CategoryFailure>>
  updateCategoryItemById({
    required int id,
    required CategoryItemEntity item,
  }) async {
    final result = await _api.updateCategoryItemById(
      id: id,
      item: item.toModel(),
    );

    return result.map(
      success: (success) => Result.success(
        success.data.toEntity(),
      ),
      failure: (failure) => Result.failure(
        failure.failure,
      ),
    );
  }

  @override
  Future<Result<int, CategoryFailure>> updateCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
    required CategoryItemEntity item,
  }) {
    return _api.updateCategoryItemByFilter(
      filter: filter,
      item: item.toModel(),
    );
  }

  @override
  Future<Result<int, CategoryFailure>> deleteCategoryItemById({
    required int itemId,
  }) {
    return _api.deleteCategoryItemById(
      itemId: itemId,
    );
  }

  @override
  Future<Result<List<int>, CategoryFailure>> deleteCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
  }) {
    return _api.deleteCategoryItemByFilter(
      filter: filter,
    );
  }

  @override
  Future<Result<List<CollectionEntity>, CategoryFailure>>
  getCollectionsByCategoryItemFilter({
    required CategoryItemQueryFilter categoryItemFilter,
    required CollectionQueryFilter collectionFilter,
  }) async {
    final result = await _api.getCollectionsByCategoryItemFilter(
      categoryItemFilter: categoryItemFilter,
      collectionFilter: collectionFilter,
    );

    return result.map(
      success: (success) => Result.success(
        success.data
            .map((collection) => collection.toEntity())
            .toList(),
      ),
      failure: (failure) => Result.failure(
        failure.failure,
      ),
    );
  }

  @override
  Future<Result<List<CategoryItemEntity>, CategoryFailure>>
  getCategoryItemByFilter({
    required CategoryItemQueryFilter categoryItemFilter,
  }) async {
    final result = await _api.getCategoryItemByFilter(
      categoryItemFilter: categoryItemFilter,
    );

    return result.map(
      success: (success) => Result.success(
        success.data.map((item) => item.toEntity()).toList(),
      ),
      failure: (failure) => Result.failure(
        failure.failure,
      ),
    );
  }

  @override
  Future<Result<CategoryItemEntity, CategoryFailure>> getCategoryItemById({
    required int itemId,
  }) async {
    final result = await _api.getCategoryItemById(
      itemId: itemId,
    );

    return result.map(
      success: (success) => Result.success(
        success.data.toEntity(),
      ),
      failure: (failure) => Result.failure(
        failure.failure,
      ),
    );
  }
}
