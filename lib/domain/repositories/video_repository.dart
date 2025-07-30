
import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';

abstract class VideoRepository {
  Future<VideoEntity> uploadVideo({required VideoEntity video});

  Future<List<VideoEntity>> getVideosFiltered({
    required VideoQueryFilter filter,

  });

  Future<void> deleteVideo(); //for admin and creator
  Future<void> deleteVideoList({required VideoQueryFilter filter}
); 
  Future<VideoEntity> updateVideo({required VideoEntity video});
}
