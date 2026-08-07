import 'dart:io';

import 'package:baladeston/application/providers/video_cubit/video_state.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/usecase/count_video/count_video_usecase.dart';
import 'package:baladeston/domain/video/usecase/create_video/create_video_usecase.dart';
import 'package:baladeston/domain/video/usecase/delete_video_by_filter/delete_video_by_filter_usecase.dart';
import 'package:baladeston/domain/video/usecase/delete_video_by_id/delete_video_by_id_usecase.dart';
import 'package:baladeston/domain/video/usecase/get_video_by_filter/get_video_by_filter_usecase.dart';
import 'package:baladeston/domain/video/usecase/get_video_by_id/get_video_by_id_usecase.dart';
import 'package:baladeston/domain/video/usecase/update_video_by_filter/update_video_by_filter_usecase.dart';
import 'package:baladeston/domain/video/usecase/update_video_by_id/update_video_by_id_usecase.dart';
import 'package:baladeston/domain/video/usecase/video_upload_image_file/video_upload_image_file_usecase.dart';
import 'package:baladeston/domain/video/usecase/video_upload_video_file/video_upload_video_file_usecase.dart';
import 'package:baladeston/presentation/mapper/video/video_failure_mapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoCubit extends Cubit<VideoState> {
  final CountVideosUseCase _countUseCase;
  final GetVideoByFilterUseCase _getByFilterUseCase;
  final GetVideoByIdUseCase _getByIdUseCase;
  final CreateVideoUseCase _createVideoUseCase;
  final VideoUploadVideoFileUsecase _uploadVideoUseCase;
  final VideoUploadImageFileUsecase _uploadImageUseCase;
  final UpdateVideoByIdUseCase _updateByIdUseCase;
  final UpdateVideoByFilterUseCase _updateByFilterUseCase;
  final DeleteVideoByIdUseCase _deleteByIdUseCase;
  final DeleteVideoByFilterUseCase _deleteByFilterUseCase;

  VideoQueryFilter? _lastFilter;

  VideoCubit({
    required CountVideosUseCase countUseCase,
    required GetVideoByFilterUseCase getByFilterUseCase,
    required GetVideoByIdUseCase getByIdUseCase,
    required CreateVideoUseCase createVideoUseCase,
    required VideoUploadVideoFileUsecase uploadVideoUseCase,
    required VideoUploadImageFileUsecase uploadImageUseCase,
    required UpdateVideoByIdUseCase updateByIdUseCase,
    required UpdateVideoByFilterUseCase updateByFilterUseCase,
    required DeleteVideoByIdUseCase deleteByIdUseCase,
    required DeleteVideoByFilterUseCase deleteByFilterUseCase,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createVideoUseCase = createVideoUseCase,
        _uploadVideoUseCase = uploadVideoUseCase,
        _uploadImageUseCase = uploadImageUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        super(const VideoState.initial());

  void _emitFailure(VideoFailure failure) {
    emit(
      VideoState.error(
        error: mapVideoFailureToStateError(failure),
        failure: failure,
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                            Load / Refresh Video                            */
  /* -------------------------------------------------------------------------- */

  Future<void> loadVideos({VideoQueryFilter? filter}) async {
    final effectiveFilter = filter ?? _lastFilter ?? VideoQueryFilter();
    _lastFilter = effectiveFilter;

    emit(const VideoState.fetchingAllVideo());

    final (listResult, countResult) = await (
    _getByFilterUseCase(filter: effectiveFilter),
    _countUseCase(filter: effectiveFilter),
    ).wait;

    listResult.map(
      success: (videosRes) {
        countResult.map(
          success: (countRes) {
            emit(
              VideoState.successListLoaded(
                videos: videosRes.data,
                count: countRes.data,
              ),
            );
          },
          failure: (f) => _emitFailure(f.failure),
        );
      },
      failure: (f) => _emitFailure(f.failure),
    );
  }

  Future<void> refreshFilter() async {
    await loadVideos(filter: _lastFilter);
  }

  /* -------------------------------------------------------------------------- */
  /*                                Get Video by ID                             */
  /* -------------------------------------------------------------------------- */

  Future<void> loadVideoById(int id) async {
    emit(const VideoState.fetchingVideo());

    final result = await _getByIdUseCase(id: id);

    result.map(
      success: (res) => emit(VideoState.successSingleLoaded(video: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Create                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> createVideo({required VideoEntity video}) async {
    emit(const VideoState.creatingVideo());

    final result = await _createVideoUseCase(video: video);

    result.map(
      success: (res) async {
        emit(VideoState.createdVideo(video: res.data));
        await refreshFilter();
      },
      failure: (f) => _emitFailure(f.failure),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                               Upload Operations                            */
  /* -------------------------------------------------------------------------- */

  Future<void> uploadVideoFile({required File file}) async {
    emit(const VideoState.uploadingFileVideo());

    final result = await _uploadVideoUseCase(video: file);

    result.map(
      success: (res) => emit(VideoState.uploadedFileVideo(url: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  Future<void> uploadThumbnail({required File image}) async {
    emit(const VideoState.uploadingImageVideo());

    final result = await _uploadImageUseCase(image: image);

    result.map(
      success: (res) => emit(VideoState.uploadedImageVideo(url: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                               Update Operations                            */
  /* -------------------------------------------------------------------------- */

  Future<void> updateVideoById({
    required int id,
    required VideoEntity video,
  }) async {
    emit(const VideoState.updatingVideo());

    final result = await _updateByIdUseCase(id: id, video: video);

    result.map(
      success: (res) async {
        emit(VideoState.updatedSingleVideo(video: res.data));
        await refreshFilter();
      },
      failure: (f) => _emitFailure(f.failure),
    );
  }

  Future<void> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoEntity video,
  }) async {
    emit(const VideoState.updatingVideo());

    final result = await _updateByFilterUseCase(filter: filter, video: video);

    result.map(
      success: (res) async {
        emit(VideoState.updatedListVideo(updatedVideo: res.data));
        await refreshFilter();
      },
      failure: (f) => _emitFailure(f.failure),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Deletions                                 */
  /* -------------------------------------------------------------------------- */

  Future<void> deleteVideoById({required int id}) async {
    emit(const VideoState.deletingVideo());

    final result = await _deleteByIdUseCase(id: id);

    result.map(
      success: (res) async {
        emit(VideoState.deletedSingleVideo(id: res.data));
        await refreshFilter();
      },
      failure: (f) => _emitFailure(f.failure),
    );
  }

  Future<void> deleteVideosByFilter({required VideoQueryFilter filter}) async {
    emit(const VideoState.deletingVideo());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.map(
      success: (res) async {
        emit(VideoState.deletedListVideo(deletedVideo: res.data));
        await refreshFilter();
      },
      failure: (f) => _emitFailure(f.failure),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   Count                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> countVideos({VideoQueryFilter? filter}) async {
    emit(const VideoState.countingVideo());

    final effectiveFilter = filter ?? _lastFilter ?? VideoQueryFilter();
    _lastFilter = effectiveFilter;

    final result = await _countUseCase(filter: effectiveFilter);
    result.map(
      success: (res) => emit(VideoState.countedVideo(count: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }
}
