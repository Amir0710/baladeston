import 'package:baladeston/domain/repositories/video_repository.dart';

class UploadVideoUseCase {
  final VideoRepository repository;

  UploadVideoUseCase(this.repository);

  Future<void> call() {
    return repository.uploadVideo();
  }
}
