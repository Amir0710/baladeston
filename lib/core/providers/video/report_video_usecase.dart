import 'package:baladeston/domain/repositories/video_repository.dart';

class ReportVideoUseCase {
  final VideoRepository repository;

  ReportVideoUseCase(this.repository);

  Future<void> call({
    required int userId,
    required int videoId,
    required String reason,
  }) {
    return repository.reportVideo(userId: userId, videoId: videoId, reason: reason);
  }
}
