import 'dart:io';
import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/model/video_model.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoApi {
  Future<Result<VideoModel, VideoFailure>> createVideo({
    required VideoModel video,
  });

  Future<Result<PaginatedResponseModel<VideoModel>, VideoFailure>> getVideoByFilter({
    required VideoQueryFilter filter,
  });

  Future<Result<VideoModel, VideoFailure>> getVideoById({
    required int id,
  });

  Future<Result<VideoModel, VideoFailure>> updateVideoById({
    required int id,
    required VideoModel video,
  });

  Future<Result<int, VideoFailure>> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoModel video,
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
