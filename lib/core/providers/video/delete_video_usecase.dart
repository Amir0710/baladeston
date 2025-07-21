import 'package:baladeston/domain/repositories/video_repository.dart';

class DeleteVideoUseCase {
  final VideoRepository repository;

  DeleteVideoUseCase(this.repository);

  Future<void> call() {
    return repository.deleteVideo();
  }
}
