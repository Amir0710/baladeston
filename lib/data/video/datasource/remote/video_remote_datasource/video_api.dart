import 'dart:io';

import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/model/video_model.dart';

abstract class VideoApi {
  Future<VideoModel> createVideo({
    required VideoModel video,
  });

  Future<List<VideoModel>> getVideoByFilter({
    required VideoQueryFilter filter,
  });

  Future<VideoModel> getVideoById({
    required int id,
  });

  Future<VideoModel> updateVideoById({
    required int id,
    required VideoModel video,
  });

  Future<int> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoModel video,
  });

  Future<int> deleteVideoById({
    required int id,
  });

  Future<int> deleteVideoByFilter({
    required VideoQueryFilter filter,
  });

  Future<int> countVideos({
    required VideoQueryFilter filter,
  });

  Future<String> uploadImage({
    required File image,
  });

  Future<String> uploadVideo({
    required File video,
  });
}
