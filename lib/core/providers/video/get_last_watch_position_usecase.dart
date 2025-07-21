import 'package:baladeston/domain/repositories/video_repository.dart';

class GetLastWatchPositionUseCase {
  final VideoRepository repository;

  GetLastWatchPositionUseCase(this.repository);

  Future<int> call({required int userId, required int videoId}) {
    return repository.getLastWatchPosition(userId: userId, videoId: videoId);
  }
}
