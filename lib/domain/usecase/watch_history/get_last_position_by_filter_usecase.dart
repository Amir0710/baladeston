import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class GetLastPosition {
  final WatchHistoryRepository repository;

  GetLastPosition(this.repository);

  Future<List<WatchHistoryEntity>?> call(WatchHistoryQueryFilter filter) {
    return repository.getLastPositionbyFilter(filter: filter);
  }
}
