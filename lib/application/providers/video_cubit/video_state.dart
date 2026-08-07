import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_state.freezed.dart';

enum VideoStateError {
  network,
  timeout,
  server,
  permission,
  notFound,
  validation,
  unknown,
}

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _Initial;

  const factory VideoState.loading() = _Loading;

  // SUCCESS
  const factory VideoState.successListLoaded({
    required List<VideoEntity> videos,
    required int count,
  }) = _SuccessListLoaded;

  const factory VideoState.successSingleLoaded({
    required VideoEntity video,
  }) = _SuccessSingleLoaded;

  // ERROR
  const factory VideoState.error({
    required VideoStateError error,
    required VideoFailure failure,
  }) = _Error;

  // LOAD
  const factory VideoState.fetchingVideo() = _FetchingVideo;

  const factory VideoState.fetchingAllVideo() = _FetchingAllVideo;

  // CREATE
  const factory VideoState.creatingVideo() = _CreatingVideo;

  const factory VideoState.createdVideo({
    required VideoEntity video,
  }) = _CreatedVideo;

  // UPDATE
  const factory VideoState.updatingVideo() = _UpdatingVideo;

  const factory VideoState.updatedSingleVideo({
    required VideoEntity video,
  }) = _UpdatedSingleVideo;

  const factory VideoState.updatedListVideo({
    required int updatedVideo,
  }) = _UpdatedListVideo;

  // DELETE
  const factory VideoState.deletingVideo() = _DeletingVideo;

  const factory VideoState.deletedSingleVideo({
    required int id,
  }) = _DeletedSingleVideo;

  const factory VideoState.deletedListVideo({
    required int deletedVideo,
  }) = _DeletedListVideo;

  // COUNT
  const factory VideoState.countingVideo() = _CountingVideo;

  const factory VideoState.countedVideo({
    required int count,
  }) = _CountedVideo;

  // UPLOAD IMAGE
  const factory VideoState.uploadingImageVideo() = _UploadingImageVideo;

  const factory VideoState.uploadedImageVideo({
    required String url,
  }) = _UploadedImageVideo;

  // UPLOAD VIDEO FILE
  const factory VideoState.uploadingFileVideo() = _UploadingFileVideo;

  const factory VideoState.uploadedFileVideo({
    required String url,
  }) = _UploadedFileVideo;
}
