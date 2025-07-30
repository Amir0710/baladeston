// TODO Implement this library.
import 'package:baladeston/domain/entitys/video/video_entity.dart';
import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class VideoRepositoryImplementation extends VideoRepository {
  @override
  Future<void> deleteVideo() {
    // TODO: implement deleteVideo
    throw UnimplementedError();
  }

  @override
  Future<void> deleteVideoList({required VideoQueryFilter filter}) {
    // TODO: implement deleteVideoList
    throw UnimplementedError();
  }

  @override
  Future<List<VideoEntity>> getVideosFiltered({required VideoQueryFilter filter}) {
    // TODO: implement getVideosFiltered
    throw UnimplementedError();
  }

  @override
  Future<VideoEntity> updateVideo({required VideoEntity video}) {
    // TODO: implement updateVideo
    throw UnimplementedError();
  }

  @override
  Future<VideoEntity> uploadVideo({required VideoEntity video}) {
    // TODO: implement uploadVideo
    throw UnimplementedError();
  }
}
