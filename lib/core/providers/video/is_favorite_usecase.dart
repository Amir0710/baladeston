import 'package:baladeston/domain/repositories/video_repository.dart';

class IsFavoriteUseCase {
  final VideoRepository repository;

  IsFavoriteUseCase(this.repository);

  Future<bool> call({required int userId, required int videoId}) {
    return repository.isFavorite(userId: userId, videoId: videoId);
  }
}
