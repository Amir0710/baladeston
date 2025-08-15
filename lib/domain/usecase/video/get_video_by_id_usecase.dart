import 'package:baladeston/domain/entitys/video/video_entity.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class GetVideoByIdUseCase {
  final VideoRepository repository;

  GetVideoByIdUseCase(this.repository);

  Future<VideoEntity?> call({required int id}) {
    return repository.getVideoById(id: id);
  }
}
