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
  Future<List<VideoEntity>?> getFavoriteVideos({required int userId}) {
    // TODO: implement getFavoriteVideos
    throw UnimplementedError();
  }

  @override
  Future<int> getLastWatchPosition({required int userId, required int videoId}) {
    // TODO: implement getLastWatchPosition
    throw UnimplementedError();
  }

  @override
  Future<List<VideoEntity>> getVideosFiltered({required VideoQueryFilter filter}) {
    // TODO: implement getVideosFiltered
    throw UnimplementedError();
  }

  @override
  Future<bool> isFavorite({required int userId, required int videoId}) {
    // TODO: implement isFavorite
    throw UnimplementedError();
  }

  @override
  Future<void> reportVideo({required int userId, required int videoId, required String reason}) {
    // TODO: implement reportVideo
    throw UnimplementedError();
  }

  @override
  Future<void> toggleFavorite({required int userId, required int videoId}) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }

  @override
  Future<void> updateLastWatch({required int userId, required int videoId, required int lastPositionSeconds}) {
    // TODO: implement updateLastWatch
    throw UnimplementedError();
  }

  @override
  Future<void> updateVideo({required VideoEntity video}) {
    // TODO: implement updateVideo
    throw UnimplementedError();
  }

  @override
  Future<void> uploadVideo({required VideoEntity video}) {
    // TODO: implement uploadVideo
    throw UnimplementedError();
  }
  
  @override
  Future<void> deleteVideoList({required VideoQueryFilter filter}) {
    // TODO: implement deleteVideoList
    throw UnimplementedError();
  }
}