import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';

part 'video_state.freezed.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _Initial;
  const factory VideoState.loading() = _Loading;

  /// پس از getVideosFilteredUseCase
  const factory VideoState.videosLoaded({
    required List<VideoEntity> videos,
  }) = _VideosLoaded;

  /// پس از getFavoriteVideosUseCase
  const factory VideoState.favoriteVideosLoaded({
    required List<VideoEntity>? videos,
  }) = _FavoriteVideosLoaded;

  /// پس از getLastWatchPositionUseCase
  const factory VideoState.lastWatchPositionLoaded({
    required int position,
  }) = _LastWatchPositionLoaded;

  /// پس از isFavoriteUseCase
  const factory VideoState.isFavoriteLoaded({
    required bool isFavorite,
  }) = _IsFavoriteLoaded;

  /// عملیات void که موفق تمام می‌شود
  const factory VideoState.success() = _Success;

  const factory VideoState.failure({
    required String message,
  }) = _Failure;
}
