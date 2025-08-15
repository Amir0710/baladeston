import 'package:baladeston/domain/entitys/video/video_entity.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class UploadVideoUseCase {
  final VideoRepository repository;

  UploadVideoUseCase(this.repository);

  Future<VideoEntity> call({required VideoEntity video}) {
    return repository.uploadVideo(video: video);
  }
}
