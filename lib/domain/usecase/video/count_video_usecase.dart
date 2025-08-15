import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class CountVideosUseCase {
  final VideoRepository repository;

  CountVideosUseCase(this.repository);

  Future<int> call({required VideoQueryFilter filter}) {
    return repository.countVideos(filter: filter);
  }
}
