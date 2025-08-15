import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';

abstract class VideoRepository {
  Future<VideoEntity> uploadVideo({required VideoEntity video});
  Future<List<VideoEntity>?> getVideoByFilter(
      {required VideoQueryFilter filter});
  Future<VideoEntity?> getVideoById({required int id});
  Future<void> deleteVideoListByFilter({required VideoQueryFilter filter});
  Future<void> deleteVideoById({required int id});
  Future<VideoEntity> updateVideo({required VideoEntity video});
  Future<int> countVideos({required VideoQueryFilter filter});
}
