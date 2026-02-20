import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';

abstract class VideoRepository {
  /// Upload new video
  Future<Result<VideoEntity, VideoFailure>> createVideo({
    required VideoEntity video,
  });

  /// Get videos by filter
  Future<Result<List<VideoEntity>, VideoFailure>> getVideoByFilter({
    required VideoQueryFilter filter,
  });

  /// Get video by id
  Future<Result<VideoEntity, VideoFailure>> getVideoById({
    required int id,
  });

  /// Update video by id
  Future<Result<VideoEntity, VideoFailure>> updateVideoById({
    required int id,
    required VideoEntity video,
  });

  /// Update video by filter
  Future<Result<VideoEntity, VideoFailure>> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoEntity video,
  });

  /// Delete video by id
  Future<Result<int, VideoFailure>> deleteVideoById({
    required int id,
  });

  /// Delete videos by filter
  Future<Result<List<int>, VideoFailure>> deleteVideoByFilter({
    required VideoQueryFilter filter,
  });

  /// Count videos by filter
  Future<Result<int, VideoFailure>> countVideos({
    required VideoQueryFilter filter,
  });

  /// add video Image
  Future<Result<String, VideoFailure>> uploadImage({
    required int id ,
    required File image,
  });

  /// upload video file
  Future<Result<String, VideoFailure>> uploadVideo({
    required int id ,
    required File video,
  });


}
