import 'package:baladeston/application/providers/collection_video_cubit/collection_video_state.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/get_videos_by_collection_item_filter/get_videos_by_collection_item_filter_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionVideosCubit extends Cubit<CollectionVideosState> {
  CollectionVideosCubit({
    required GetVideosByCollectionItemFilterUseCase getVideosUseCase,
  })  : _getVideosUseCase = getVideosUseCase,
        super(const CollectionVideosState.initial());

  final GetVideosByCollectionItemFilterUseCase _getVideosUseCase;

  Future<void> loadVideos({
    required CollectionItemQueryFilter collectionItemFilter,
    required VideoQueryFilter videoFilter,
  }) async {
    emit(const CollectionVideosState.loading());

    final result = await _getVideosUseCase(
      collectionItemFilter: collectionItemFilter,
      videoFilter: videoFilter,
    );

    result.when(
      success: (videos) => emit(CollectionVideosState.loaded(
        videos: videos,
        hasMore: videos.length >= videoFilter.limit,
      )),
      failure: (failure) => emit(CollectionVideosState.error(failure: failure)),
    );
  }

  Future<void> loadMore({
    required CollectionItemQueryFilter collectionItemFilter,
    required VideoQueryFilter videoFilter,
  }) async {
    final currentVideos = state.maybeWhen(
      loaded: (videos, _) => videos,
      orElse: () => null,
    );
    if (currentVideos == null) return;

    emit(CollectionVideosState.loadingMore(currentVideos: currentVideos));

    final result = await _getVideosUseCase(
      collectionItemFilter: collectionItemFilter,
      videoFilter: videoFilter,
    );

    result.when(
      success: (newVideos) => emit(CollectionVideosState.loaded(
        videos: [...currentVideos, ...newVideos],
        hasMore: newVideos.length >= videoFilter.limit,
      )),
      failure: (failure) => emit(CollectionVideosState.error(failure: failure)),
    );
  }
}
