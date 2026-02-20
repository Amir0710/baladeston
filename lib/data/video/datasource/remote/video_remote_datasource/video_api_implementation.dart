import 'dart:io';

import 'package:baladeston/data/video/datasource/remote/video_remote_datasource/video_api.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/model/video_model.dart';

import 'package:baladeston/domain/video/exception/video_entity_exception.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';
import 'package:baladeston/domain/video/exception/video_id_exception.dart';
import 'package:baladeston/domain/video/exception/video_file_exception.dart';

class VideoApiImplementation implements VideoApi {
  // Create

  @override
  Future<VideoModel> createVideo({
    required VideoModel video,
  }) async {
    _validateVideoEntity(video);

    throw UnimplementedError();
  }

  // Read

  @override
  Future<List<VideoModel>> getVideoByFilter({
    required VideoQueryFilter filter,
  }) async {
    _validateFilter(filter);

    throw UnimplementedError();
  }

  @override
  Future<VideoModel> getVideoById({
    required int id,
  }) async {
    _validateId(id);

    throw UnimplementedError();
  }

  @override
  Future<int> countVideos({
    required VideoQueryFilter filter,
  }) async {
    _validateFilter(filter);

    throw UnimplementedError();
  }

  // Update

  @override
  Future<VideoModel> updateVideoById({
    required int id,
    required VideoModel video,
  }) async {
    _validateId(id);



    throw UnimplementedError();
  }

  @override
  Future<VideoModel> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoModel video,
  }) async {
    _validateFilter(filter);


    throw UnimplementedError();
  }

  // Delete

  @override
  Future<int> deleteVideoById({
    required int id,
  }) async {
    _validateId(id);

    throw UnimplementedError();
  }

  @override
  Future<List<int>> deleteVideoByFilter({
    required VideoQueryFilter filter,
  }) async {


    throw UnimplementedError();
  }

  // Uploads

  @override
  Future<String> uploadImage({
    required int id,
    required File image,
  }) async {
    _validateId(id);

    if (!image.existsSync()) {
      throw InvalidVideoFileIdException();
    }

    throw UnimplementedError();
  }

  @override
  Future<String> uploadVideo({
    required int id,
    required File video,
  }) async {
    _validateId(id);

    if (!video.existsSync()) {
      throw InvalidVideoFileIdException();
    }

    throw UnimplementedError();
  }

  // Validators

  void _validateId(int id) {
    if (id <= 0) {
      throw const VideoIdInvalidException();
    }
  }

  void _validateFilter(VideoQueryFilter filter) {
    if (filter.limit != null && filter.limit <= 0) {
      throw const VideoFilterLimitException();
    }

    if (filter.offset != null && filter.offset < 0) {
      throw const VideoFilterOffsetException();
    }
  }

  void _validateVideoEntity(VideoModel video) {
    if (video.title == null || video.title.isEmpty) {
      throw const VideoTitleEmptyException();
    }
  }
}
