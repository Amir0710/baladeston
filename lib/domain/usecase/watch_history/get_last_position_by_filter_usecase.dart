import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class GetWatchHistoryByFilterUseCase {
  final WatchHistoryRepository repository;

  GetWatchHistoryByFilterUseCase({required this.repository});

  Future<List<WatchHistoryEntity>?> call({required WatchHistoryQueryFilter filter}) {
    return repository.getLastPositionByFilter(filter: filter);
  }
}
