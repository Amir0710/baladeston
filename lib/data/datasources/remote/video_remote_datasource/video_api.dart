import 'package:baladeston/data/models/video/video_model.dart';
import 'package:baladeston/domain/filters/video_query_filter.dart';

abstract class VideoApi {
  Future<VideoModel> uploadVideo({required VideoModel video});
  Future<List<VideoModel>?> getVideoByFilter(
      {required VideoQueryFilter filter});
  Future<VideoModel?> getVideoById({required int id});
  Future<void> deleteVideoListByFilter({required VideoQueryFilter filter});
  Future<void> deleteVideoById({required int id});
  Future<VideoModel> updateVideo({required VideoModel video});
  Future<int> countVideos({required VideoQueryFilter filter});
}
