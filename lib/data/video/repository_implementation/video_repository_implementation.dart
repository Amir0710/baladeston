import 'dart:io';

import 'package:baladeston/core/result/result.dart';

import 'package:baladeston/data/video/datasource/remote/video_remote_datasource/video_api.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/mapper/video_mapper.dart';

import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/failure/video_failure_mapper.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';

class VideoRepositoryImplementation implements VideoRepository {
  final VideoApi api;

  const VideoRepositoryImplementation({
    required this.api,
  });

  // ------------------------------------------------------
  // Create video
  // ------------------------------------------------------

  @override
  Future<Result<VideoEntity, VideoFailure>> createVideo({
    required VideoEntity video,
  }) async {
    try {
      final result = await api.createVideo(
        video: video.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Get videos by filter
  // ------------------------------------------------------

  @override
  Future<Result<List<VideoEntity>, VideoFailure>> getVideoByFilter({
    required VideoQueryFilter filter,
  }) async {
    try {
      final result = await api.getVideoByFilter(filter: filter);
      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Get video by id
  // ------------------------------------------------------

  @override
  Future<Result<VideoEntity, VideoFailure>> getVideoById({
    required int id,
  }) async {
    try {
      final result = await api.getVideoById(id: id);
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Update video by id
  // ------------------------------------------------------

  @override
  Future<Result<VideoEntity, VideoFailure>> updateVideoById({
    required int id,
    required VideoEntity video,
  }) async {
    try {
      final result = await api.updateVideoById(
        id: id,
        video: video.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Update video by filter
  // ------------------------------------------------------

  @override
  Future<Result<VideoEntity, VideoFailure>> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoEntity video,
  }) async {
    try {
      final result = await api.updateVideoByFilter(
        filter: filter,
        video: video.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Delete video by id
  // ------------------------------------------------------

  @override
  Future<Result<int, VideoFailure>> deleteVideoById({
    required int id,
  }) async {
    try {
      final result = await api.deleteVideoById(id: id);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Delete videos by filter
  // ------------------------------------------------------

  @override
  Future<Result<List<int>, VideoFailure>> deleteVideoByFilter({
    required VideoQueryFilter filter,
  }) async {
    try {
      final result = await api.deleteVideoByFilter(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Count videos
  // ------------------------------------------------------

  @override
  Future<Result<int, VideoFailure>> countVideos({
    required VideoQueryFilter filter,
  }) async {
    try {
      final result = await api.countVideos(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Upload video image
  // ------------------------------------------------------

  @override
  Future<Result<String, VideoFailure>> uploadImage({
    required int id,
    required File image,
  }) async {
    try {
      final result = await api.uploadImage(
        id: id,
        image: image,
      );
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }

  // ------------------------------------------------------
  // Upload video file
  // ------------------------------------------------------

  @override
  Future<Result<String, VideoFailure>> uploadVideo({
    required int id,
    required File video,
  }) async {
    try {
      final result = await api.uploadVideo(
        id: id,
        video: video,
      );
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapVideoException(error));
    }
  }
}
