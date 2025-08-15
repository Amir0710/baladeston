import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';
import 'package:baladeston/domain/filters/video_query_filter.dart';

// UseCases
import 'package:baladeston/domain/usecase/video/count_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_video_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_video_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/video/upload_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/update_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/delete_video_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/video/delete_video_list_by_filter_usecase.dart';

import 'video_state.dart';

class VideoCubit extends Cubit<VideoState> {
  final CountVideosUseCase _countUseCase;
  final GetVideosByFilterUseCase _getByFilterUseCase;
  final GetVideoByIdUseCase _getByIdUseCase;
  final UploadVideoUseCase _uploadUseCase;
  final UpdateVideoUseCase _updateUseCase;
  final DeleteVideoByIdUseCase _deleteByIdUseCase;
  final DeleteVideoListByFilterUseCase _deleteByFilterUseCase;

  VideoQueryFilter? _lastFilter;

  VideoCubit({
    required CountVideosUseCase countUseCase,
    required GetVideosByFilterUseCase getByFilterUseCase,
    required GetVideoByIdUseCase getByIdUseCase,
    required UploadVideoUseCase uploadUseCase,
    required UpdateVideoUseCase updateUseCase,
    required DeleteVideoByIdUseCase deleteByIdUseCase,
    required DeleteVideoListByFilterUseCase deleteByFilterUseCase,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _uploadUseCase = uploadUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        super(const VideoState.initial());

  Future<void> loadVideos([VideoQueryFilter? filter]) async {
    emit(const VideoState.loading());
    try {
      final f = filter ?? VideoQueryFilter();
      _lastFilter = f;
      final videos = await _getByFilterUseCase(filter: f);
      final count = await _countUseCase(filter: f);
      emit(VideoState.success(video: videos ?? [], count: count));
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> refreshFilter() async {
    await loadVideos(_lastFilter);
  }

  Future<void> loadVideoById(int id) async {
    emit(const VideoState.loading());
    try {
      final video = await _getByIdUseCase(id: id);
      emit(VideoState.success(
        video: video != null ? [video] : [],
        count: video != null ? 1 : 0,
      ));
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> uploadVideo(VideoEntity video) async {
    emit(const VideoState.loading());
    try {
      await _uploadUseCase(video: video);
      await refreshFilter();
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> updateVideo(VideoEntity video) async {
    emit(const VideoState.loading());
    try {
      await _updateUseCase(video: video);
      await refreshFilter();
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> deleteVideosByFilter(VideoQueryFilter filter) async {
    emit(const VideoState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await refreshFilter();
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }

  Future<void> deleteVideoById(int id) async {
    emit(const VideoState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await refreshFilter();
    } catch (e) {
      emit(VideoState.failure(message: e.toString()));
    }
  }
}
