import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_video_state.freezed.dart';

@freezed
class CollectionVideosState with _$CollectionVideosState {
  const factory CollectionVideosState.initial() = _Initial;

  const factory CollectionVideosState.loading() = _Loading;

  const factory CollectionVideosState.loadingMore({
    required List<VideoEntity> currentVideos,
  }) = _LoadingMore;

  const factory CollectionVideosState.loaded({
    required List<VideoEntity> videos,
    required bool hasMore,
  }) = _Loaded;

  const factory CollectionVideosState.error({
    required CollectionFailure failure,
  }) = _Error;
}
