import 'package:baladeston/data/datasources/remote/video_remote_datasource/video_api.dart';
import 'package:baladeston/data/mapper/entity/video_mapper.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';
import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class VideoRepositoryImplementation extends VideoRepository {
  final VideoApi _api;

  VideoRepositoryImplementation({required VideoApi api}) : _api = api;
  @override
  Future<void> deleteVideoListByFilter(
      {required VideoQueryFilter filter}) async {
    try {
      await _api.deleteVideoListByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<VideoEntity>?> getVideoByFilter(
      {required VideoQueryFilter filter}) async {
    try {
      final resultModel = await _api.getVideoByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<VideoEntity?> getVideoById({required int id}) async {
    try {
      final resultModel = await _api.getVideoById(id: id);
      return resultModel?.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<VideoEntity> updateVideo({required VideoEntity video}) async {
    try {
      final model = video.toModel();
      final resultModel = await _api.updateVideo(video: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<VideoEntity> uploadVideo({required VideoEntity video}) async {
    try {
      final model = video.toModel();
      final resultModel = await _api.uploadVideo(video: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteVideoById({required int id}) async {
    try {
      await _api.deleteVideoById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<int> countVideos({required VideoQueryFilter filter}) async {
    try {
      return await _api.countVideos(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
