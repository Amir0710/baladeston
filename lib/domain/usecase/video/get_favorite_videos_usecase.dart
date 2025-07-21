import 'package:baladeston/domain/entitys/video/video.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class GetFavoriteVideosUseCase {
  final VideoRepository repository;

  GetFavoriteVideosUseCase(this.repository);

  Future<List<Video>?> call({required int userId}) {
    return repository.getFavoriteVideos(userId: userId);
  }
}
