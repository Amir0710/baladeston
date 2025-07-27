import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';

import 'package:baladeston/domain/usecase/video/delete_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/is_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_videos_filtered_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_last_watch_position_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_favorite_videos_usecase.dart';
import 'package:baladeston/domain/usecase/video/report_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/toggle_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/video/upload_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/update_last_watch_usecase.dart';
import 'package:baladeston/domain/usecase/video/update_video_usecase.dart';

import 'video_state.dart';

class VideoCubit extends Cubit<VideoState> {
  final DeleteVideoUseCase _deleteUseCase;
  final IsFavoriteUseCase _isFavoriteUseCase;
  final GetVideosFilteredUseCase _getFilteredUseCase;
  final GetLastWatchPositionUseCase _getLastPositionUseCase;
  final GetFavoriteVideosUseCase _getFavoriteUseCase;
  final ReportVideoUseCase _reportUseCase;
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  final UploadVideoUseCase _uploadVideoUseCase;
  final UpdateLastWatchUseCase _updateLastWatchUseCase;
  final UpdateVideoUseCase _updateVideoUseCase;

  VideoCubit({
    required DeleteVideoUseCase deleteUseCase,
    required IsFavoriteUseCase isFavoriteUseCase,
    required GetVideosFilteredUseCase getFilteredUseCase,
    required GetLastWatchPositionUseCase getLastPositionUseCase,
    required GetFavoriteVideosUseCase getFavoriteUseCase,
    required ReportVideoUseCase reportUseCase,
    required ToggleFavoriteUseCase toggleFavoriteUseCase,
    required UploadVideoUseCase uploadVideoUseCase,
    required UpdateLastWatchUseCase updateLastWatchUseCase,
    required UpdateVideoUseCase updateVideoUseCase,
  })  : _deleteUseCase = deleteUseCase,
        _isFavoriteUseCase = isFavoriteUseCase,
        _getFilteredUseCase = getFilteredUseCase,
        _getLastPositionUseCase = getLastPositionUseCase,
        _getFavoriteUseCase = getFavoriteUseCase,
        _reportUseCase = reportUseCase,
        _toggleFavoriteUseCase = toggleFavoriteUseCase,
        _uploadVideoUseCase = uploadVideoUseCase,
        _updateLastWatchUseCase = updateLastWatchUseCase,
        _updateVideoUseCase = updateVideoUseCase,
        super(const VideoState.initial());

  Future<void> loadVideos({
    required VideoQueryFilter filter,
    required int limit,
    required int offset,
  }) async {
    emit(const VideoState.loading());
    try {
      final videos = await _getFilteredUseCase(
        filter: filter,
        limit: limit,
        offset: offset,
      );
      emit(VideoState.videosLoaded(videos: videos));
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> loadFavoriteVideos({required int userId}) async {
    emit(const VideoState.loading());
    try {
      final videos = await _getFavoriteUseCase(userId: userId);
      emit(VideoState.favoriteVideosLoaded(videos:videos));
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));// check null 
    }
  }

  Future<void> loadLastWatchPosition({
    required int userId,
    required int videoId,
  }) async {
    emit(const VideoState.loading());
    try {
      final pos = await _getLastPositionUseCase(
        userId: userId,
        videoId: videoId,
      );
      emit(VideoState.lastWatchPositionLoaded(position: pos));
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> checkIsFavorite({
    required int userId,
    required int videoId,
  }) async {
    emit(const VideoState.loading());
    try {
      final flag = await _isFavoriteUseCase(
        userId: userId,
        videoId: videoId,
      );
      emit(VideoState.isFavoriteLoaded(isFavorite: flag));
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> deleteVideo() async {
    emit(const VideoState.loading());
    try {
      await _deleteUseCase();
      emit(const VideoState.success());
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> reportVideo({
    required int userId,
    required int videoId,
    required String reason,
  }) async {
    emit(const VideoState.loading());
    try {
      await _reportUseCase(
        userId: userId,
        videoId: videoId,
        reason: reason,
      );
      emit(const VideoState.success());
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> toggleFavorite({
    required int userId,
    required int videoId,
  }) async {
    emit(const VideoState.loading());
    try {
      await _toggleFavoriteUseCase(
        userId: userId,
        videoId: videoId,
      );
      emit(const VideoState.success());
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> uploadVideo({required VideoEntity video}) async {
    emit(const VideoState.loading());
    try {
      await _uploadVideoUseCase(video );
      emit(const VideoState.success());
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> updateLastWatch({
    required int userId,
    required int videoId,
    required int lastPositionSeconds,
  }) async {
    emit(const VideoState.loading());
    try {
      await _updateLastWatchUseCase(
        userId: userId,
        videoId: videoId,
        lastPositionSeconds: lastPositionSeconds,
      );
      emit(const VideoState.success());
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> updateVideo(VideoEntity video) async {
    emit(const VideoState.loading());
    try {
      await _updateVideoUseCase(video);
      emit(const VideoState.success());
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }
}
