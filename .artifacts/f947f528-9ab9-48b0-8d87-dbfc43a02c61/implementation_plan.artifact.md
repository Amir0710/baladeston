# Implement Pagination for Category Items

Implement paginated response for category items and their collections, following the pattern used for collection items.

## Proposed Changes

### [Category Data Layer]

#### [MODIFY] [category_item_api.dart](file:///C:/personal/folder/code/baladeston/lib/data/category/datasource/remote/category_item_remote_datasource/category_item_api.dart)
- Change `getCollectionsByCategoryItemFilter` to return `Future<Result<PaginatedResponseModel<CollectionModel>, CategoryFailure>>`.
- Change `getCategoryItemByFilter` to return `Future<Result<PaginatedResponseModel<CategoryItemModel>, CategoryFailure>>`.
- Import `PaginatedResponseModel`.

#### [MODIFY] [category_item_api_implementation.dart](file:///C:/personal/folder/code/baladeston/lib/data/category/datasource/remote/category_item_remote_datasource/category_item_api_implementation.dart)
- Update `getCollectionsByCategoryItemFilter` and `getCategoryItemByFilter` to handle both paginated (Map) and legacy (List) responses from the server.
- Add helper methods like `_asMap`, `_asList`, and improve error/parsing handling to match `CollectionItemApiImplementation`.
- Import `PaginatedResponseModel`.

#### [MODIFY] [category_item_repository_implementation.dart](file:///C:/personal/folder/code/baladeston/lib/data/category/repository_implementation/item/category_item_repository_implementation.dart)
- Update `getCollectionsByCategoryItemFilter` and `getCategoryItemByFilter` to map `PaginatedResponseModel<Model>` to `PaginatedResponseModel<Entity>`.
- Import `PaginatedResponseModel`.

### [Category Domain Layer]

#### [MODIFY] [category_item_repository.dart](file:///C:/personal/folder/code/baladeston/lib/domain/category/repository/item/category_item_repository.dart)
- Change `getCollectionsByCategoryItemFilter` to return `Future<Result<PaginatedResponseModel<CollectionEntity>, CategoryFailure>>`.
- Change `getCategoryItemByFilter` to return `Future<Result<PaginatedResponseModel<CategoryItemEntity>, CategoryFailure>>`.
- Import `PaginatedResponseModel`.

#### [MODIFY] [get_category_item_by_filter_usecase.dart](file:///C:/personal/folder/code/baladeston/lib/domain/category/usecase/category_item/get_category_item_by_filter/get_category_item_by_filter_usecase.dart)
- Update return type to `Future<Result<PaginatedResponseModel<CategoryItemEntity>, CategoryFailure>>`.

#### [MODIFY] [get_collections_by_category_item_filter_usecase.dart](file:///C:/personal/folder/code/baladeston/lib/domain/category/usecase/category_item/get_collections_by_category_item_filter/get_collections_by_category_item_filter_usecase.dart)
- Update return type to `Future<Result<PaginatedResponseModel<CollectionEntity>, CategoryFailure>>`.

## Verification Plan

### Automated Tests
- Since I don't have existing tests for these, manual verification via log inspection or UI testing (if available) would be needed. However, I will ensure the logic matches the already working `CollectionItemApiImplementation`.
