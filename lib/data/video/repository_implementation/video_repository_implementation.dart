import 'dart:io';

import 'package:baladeston/core/model/paginated_response_model.dart';
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
  Future<Result<int, VideoFailure>> countVideos({
    required VideoQueryFilter filter,
  }) {
    return _api.countVideos(filter: filter);
  }

  @override
  Future<Result<VideoEntity, VideoFailure>> createVideo({
    required VideoEntity video,
  }) async {
    final model = video.toModel();
    final result = await _api.createVideo(video: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, VideoFailure>> deleteVideoByFilter({
    required VideoQueryFilter filter,
  }) {
    return _api.deleteVideoByFilter(filter: filter);
  }

  @override
  Future<Result<int, VideoFailure>> deleteVideoById({
    required int id,
  }) {
    return _api.deleteVideoById(id: id);
  }

  @override
  Future<Result<PaginatedResponseModel<VideoEntity>, VideoFailure>>
      getVideoByFilter({
    required VideoQueryFilter filter,
  }) async {
    final result = await _api.getVideoByFilter(filter: filter);

    return result.map(
      success: (s) {
        final paginatedModel = s.data;
        final entities = paginatedModel.items.map((e) => e.toEntity()).toList();

        return Result.success(PaginatedResponseModel<VideoEntity>(
          items: entities,
          nextCursor: paginatedModel.nextCursor,
          isLast: paginatedModel.isLast,
        ));
      },
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<VideoEntity, VideoFailure>> getVideoById({
    required int id,
  }) async {
    final result = await _api.getVideoById(id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, VideoFailure>> updateVideoByFilter({
    required VideoQueryFilter filter,
    required VideoEntity video,
  }) async {
    final model = video.toModel();
    return _api.updateVideoByFilter(filter: filter, video: model);
  }

  @override
  Future<Result<VideoEntity, VideoFailure>> updateVideoById({
    required int id,
    required VideoEntity video,
  }) async {
    final model = video.toModel();
    final result = await _api.updateVideoById(id: id, video: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<String, VideoFailure>> uploadImage({
    required File image,
  }) {
    return _api.uploadImage(image: image);
  }

  @override
  Future<Result<String, VideoFailure>> uploadVideo({
    required File video,
  }) {
    return _api.uploadVideo(video: video);
  }
}
