import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/datasource/remote/video_remote_datasource/video_api.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/mapper/video_mapper.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';

class VideoRepositoryImplementation extends VideoRepository {
  final VideoApi _api;

  VideoRepositoryImplementation({
    required VideoApi api,
  }) : _api = api;

  @override
  Future<Result<VideoEntity, VideoFailure>> createVideo({
    required VideoEntity video,
  }) async {
    try {
      final model = video.toModel();
      final resultModel = await _api.createVideo(video: model);

      return Result.success(resultModel.toEntity());
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<List<VideoEntity>, VideoFailure>> getVideoByFilter({
    required VideoQueryFilter filter,
  }) async {
    try {
      final models = await _api.getVideoByFilter(filter: filter);

      return Result.success(models.map((e) => e.toEntity()).toList());
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<VideoEntity, VideoFailure>> getVideoById({
    required int id,
  }) async {
    try {
      final model = await _api.getVideoById(id: id);

      return Result.success(model.toEntity());
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<VideoEntity, VideoFailure>> updateVideoById({
    required int id,
    required VideoEntity video,
  }) async {
    try {
      final model = video.toModel();
      final updatedModel = await _api.updateVideoById(id: id, video: model);

      return Result.success(updatedModel.toEntity());
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<int, VideoFailure>> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoEntity video,
  }) async {
    try {
      final model = video.toModel();
      final ids = await _api.updateVideoByFilter(filter: filter, video: model);

      return Result.success(ids);
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<int, VideoFailure>> deleteVideoById({
    required int id,
  }) async {
    try {
      final deletedId = await _api.deleteVideoById(id: id);

      return Result.success(deletedId);
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<int, VideoFailure>> deleteVideoByFilter({
    required VideoQueryFilter filter,
  }) async {
    try {
      final ids = await _api.deleteVideoByFilter(filter: filter);

      return Result.success(ids);
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<int, VideoFailure>> countVideos({
    required VideoQueryFilter filter,
  }) async {
    try {
      final count = await _api.countVideos(filter: filter);

      return Result.success(count);
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<String, VideoFailure>> uploadImage({
    required File image,
  }) async {
    try {
      final result = await _api.uploadImage(image: image);

      return Result.success(result);
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }

  @override
  Future<Result<String, VideoFailure>> uploadVideo({
    required File video,
  }) async {
    try {
      final result = await _api.uploadVideo(video: video);

      return Result.success(result);
    } on VideoFailure catch (failure) {
      return Result.failure(failure);
    }
  }
}
