import 'package:baladeston/domain/repositories/video_repository.dart';

class UpdateLastWatchUseCase {
  final VideoRepository repository;

  UpdateLastWatchUseCase(this.repository);

  Future<void> call({
    required int userId,
    required int videoId,
    required int lastPositionSeconds,
  }) {
    return repository.updateLastWatch(
      userId: userId,
      videoId: videoId,
      lastPositionSeconds: lastPositionSeconds,
    );
  }
}
