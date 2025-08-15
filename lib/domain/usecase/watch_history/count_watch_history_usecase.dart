import 'package:baladeston/domain/filters/watch_history_query_filter.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class CountWatchHistoryUseCase {
  final WatchHistoryRepository repository;

  CountWatchHistoryUseCase({required this.repository});
  Future<int> call({required WatchHistoryQueryFilter filter}) {
    return repository.countWatchHistory(filter: filter);
  }
}
