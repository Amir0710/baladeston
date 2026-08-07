import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/get_videos_by_collection_item_filter/get_videos_by_collection_item_filter_usecase_business_rule.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';

class GetVideosByCollectionItemFilterUseCase {
  final CollectionItemRepository repository;

  const GetVideosByCollectionItemFilterUseCase({
    required this.repository,
  });

  Future<Result<List<VideoEntity>, CollectionFailure>> call({
    required CollectionItemQueryFilter collectionItemFilter,
    required VideoQueryFilter videoFilter,
  }) async {
    final businessRule = GetVideosByCollectionItemFilterUseCaseBusinessRule(
      collectionItemFilter: collectionItemFilter,
      videoFilter: videoFilter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getVideosByCollectionItemFilter(
        collectionItemFilter: collectionItemFilter,
        videoFilter: videoFilter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
