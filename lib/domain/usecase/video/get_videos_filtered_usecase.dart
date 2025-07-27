import 'package:baladeston/domain/filters/video_query_filter.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

class GetVideosFilteredUseCase {
  final VideoRepository repository;

  GetVideosFilteredUseCase(this.repository);

  Future<List<VideoEntity>> call({
    required VideoQueryFilter filter,
    required int limit,
    required int offset,
  }) {
    return repository.getVideosFiltered(
      filter: filter,
    );
  }
}
