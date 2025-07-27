import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';

abstract class WatchHistoryRepository {
  Future<void> updateLastPosition({required WatchHistoryEntity watchHistory});
  Future<List<WatchHistoryEntity>>? getLastPosition(
      {WatchHistoryQueryFilter filter});
  Future<void> deleteAllHistory();
  Future<void> deleteWatchHistoryList({WatchHistoryQueryFilter filter});
  Future<void> createWatchHistory({required WatchHistoryEntity watchHistory});
}
