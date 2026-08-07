import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_item_remote_datasource/collection_item_api.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/collection/mapper/item/collection_item_mapper.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/mapper/video_mapper.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';

class CollectionItemRepositoryImplementation extends CollectionItemRepository {
  final CollectionItemApi _itemApi;

  CollectionItemRepositoryImplementation({
    required CollectionItemApi itemApi,
  }) : _itemApi = itemApi;

  @override
  Future<Result<CollectionItemEntity, CollectionFailure>> addCollectionItem({
    required CollectionItemEntity item,
  }) async {
    final result = await _itemApi.addCollectionItem(item: item.toModel());
    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, CollectionFailure>> removeCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
  }) {
    return _itemApi.removeCollectionItemByFilter(filter: filter);
  }

  @override
  Future<Result<int, CollectionFailure>> removeCollectionItemById({
    required int itemId,
  }) {
    return _itemApi.removeCollectionItemById(itemId: itemId);
  }

  @override
  Future<Result<int, CollectionFailure>> updateCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
    required CollectionItemEntity item,
  }) {
    return _itemApi.updateCollectionItemByFilter(
      filter: filter,
      item: item.toModel(),
    );
  }

  @override
  Future<Result<CollectionItemEntity, CollectionFailure>>
  updateCollectionItemById({
    required int id,
    required CollectionItemEntity item,
  }) async {
    final result = await _itemApi.updateCollectionItemById(
      id: id,
      item: item.toModel(),
    );
    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<CollectionItemEntity>, CollectionFailure>>
  getCollectionItemByCollectionFilter({
    required CollectionItemQueryFilter collectionItemFilter,
  }) async {
    final result = await _itemApi.getCollectionItemByCollectionFilter(
      collectionItemFilter: collectionItemFilter,
    );
    return result.map(
      success: (s) =>
          Result.success(s.data.map((e) => e.toEntity()).toList()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<VideoEntity>, CollectionFailure>>
  getVideosByCollectionItemFilter({
    required CollectionItemQueryFilter collectionItemFilter,
    required VideoQueryFilter videoFilter,
  }) async {
    final result = await _itemApi.getVideosByCollectionItemFilter(
      collectionItemFilter: collectionItemFilter,
      videoFilter: videoFilter,
    );
    return result.map(
      success: (s) =>
          Result.success(s.data.map((e) => e.toEntity()).toList()),
      failure: (f) => Result.failure(f.failure),
    );
  }
}
