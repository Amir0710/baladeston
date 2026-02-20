import 'dart:io';

import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/model/video_model.dart';

abstract class VideoApi {
  // Create

  /// Create new video metadata
  Future<VideoModel> createVideo({
    required VideoModel video,
  });

  // Read

  /// Get videos by filter
  Future<List<VideoModel>> getVideoByFilter({
    required VideoQueryFilter filter,
  });

  /// Get single video by id
  Future<VideoModel> getVideoById({
    required int id,
  });

  /// Count videos by filter
  Future<int> countVideos({
    required VideoQueryFilter filter,
  });

  // Update

  /// Update video by id
  Future<VideoModel> updateVideoById({
    required int id,
    required VideoModel video,
  });

  /// Update video by filter
  Future<VideoModel> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoModel video,
  });

  // Delete

  /// Delete single video by id
  /// returns deleted video id
  Future<int> deleteVideoById({
    required int id,
  });

  /// Delete videos by filter
  /// returns list of deleted ids
  Future<List<int>> deleteVideoByFilter({
    required VideoQueryFilter filter,
  });

  // Uploads

  /// Upload video image (thumbnail / cover)
  /// returns uploaded image url
  Future<String> uploadImage({
    required int id,
    required File image,
  });

  /// Upload video file
  /// returns uploaded video url
  Future<String> uploadVideo({
    required int id,
    required File video,
  });
}
