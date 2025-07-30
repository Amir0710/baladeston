import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class DeleteVideoListUseCase {
  final VideoRepository repository;

  DeleteVideoListUseCase(this.repository);

  Future<void> call(VideoQueryFilter filter) async {
    return repository.deleteVideoList(filter: filter );
  }
}
