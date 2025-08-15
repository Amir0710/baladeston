import 'package:baladeston/domain/repositories/video_repository.dart';

class DeleteVideoByIdUseCase {
  final VideoRepository repository;

  DeleteVideoByIdUseCase(this.repository);

  Future<void> call({required int id}) async {
    return repository.deleteVideoById(id: id);
  }
}
