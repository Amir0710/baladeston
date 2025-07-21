
import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/entitys/video/video.dart';

abstract class VideoRepository {
  Future<void> uploadVideo();

  Future<List<Video>> getVideosFiltered({
    required VideoQueryFilter filter,
    required int limit,
    required int offset,
  });

  Future<void> deleteVideo();

  Future<void> updateVideo({required Video video});

  Future<void> toggleFavorite({required int userId, required int videoId});

  Future<bool> isFavorite({required int userId, required int videoId});

  Future<List<Video>?> getFavoriteVideos({required int userId});

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
