import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoRepository {
  Future<Result<VideoEntity, VideoFailure>> createVideo({
    required VideoEntity video,
  });

  Future<Result<List<VideoEntity>, VideoFailure>> getVideoByFilter({
    required VideoQueryFilter filter,
  });

  Future<Result<VideoEntity, VideoFailure>> getVideoById({
    required int id,
  });

  Future<Result<VideoEntity, VideoFailure>> updateVideoById({
    required int id,
    required VideoEntity video,
  });

  Future<Result<int, VideoFailure>> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoEntity video,
  });

  Future<Result<int, VideoFailure>> deleteVideoById({
    required int id,
  });

  Future<Result<int, VideoFailure>> deleteVideoByFilter({
    required VideoQueryFilter filter,
  });

  Future<Result<int, VideoFailure>> countVideos({
    required VideoQueryFilter filter,
  });

  Future<Result<String, VideoFailure>> uploadImage({
    required File image,
  });

  Future<Result<String, VideoFailure>> uploadVideo({
    required File video,
  });
}
