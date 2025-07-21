import 'package:baladeston/domain/entitys/video/video.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class UpdateVideoUseCase {
  final VideoRepository repository;

  UpdateVideoUseCase(this.repository);

  Future<void> call(Video video) {
    return repository.updateVideo(video: video);
  }
}