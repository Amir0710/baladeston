import 'package:baladeston/domain/filters/watch_history_query_filter.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class DeleteWatchHistoryList {
  final WatchHistoryRepository repository;

  DeleteWatchHistoryList(this.repository);
  Future<void> call({required WatchHistoryQueryFilter filter}) {
    return repository.deleteWatchHistoryList(filter: filter);
  }
}
