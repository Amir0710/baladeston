import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class DeleteVideoListByFilterUseCase {
  final VideoRepository repository;

  DeleteVideoListByFilterUseCase(this.repository);

  Future<void> call({required VideoQueryFilter filter}) async {
    return repository.deleteVideoListByFilter(filter: filter);
  }
}
