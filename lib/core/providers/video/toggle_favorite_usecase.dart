import 'package:baladeston/domain/repositories/video_repository.dart';

class ToggleFavoriteUseCase {
  final VideoRepository repository;

  ToggleFavoriteUseCase(this.repository);

  Future<void> call({required int userId, required int videoId}) {
    return repository.toggleFavorite(userId: userId, videoId: videoId);
  }
}
