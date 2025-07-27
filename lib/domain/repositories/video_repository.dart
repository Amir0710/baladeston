
import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';

abstract class VideoRepository {
  Future<void> uploadVideo({required VideoEntity video});

  Future<List<VideoEntity>> getVideosFiltered({
    required VideoQueryFilter filter,

  });

  Future<void> deleteVideo(); //for admin
  Future<void> deleteVideoList({required VideoQueryFilter filter}
); 

  Future<void> updateVideo({required VideoEntity video});

  Future<void> toggleFavorite({required int userId, required int videoId});

  Future<bool> isFavorite({required int userId, required int videoId});

  Future<List<VideoEntity>?> getFavoriteVideos({required int userId});

  Future<void> updateLastWatch({
    required int userId,
    required int videoId,
    required int lastPositionSeconds,
  });

  Future<int> getLastWatchPosition({required int userId, required int videoId});

  Future<void> reportVideo({
    required int userId,
    required int videoId,
    required String reason,
  });
}
