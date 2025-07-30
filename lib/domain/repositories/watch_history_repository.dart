import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';

abstract class WatchHistoryRepository {
  Future<WatchHistoryEntity> updateLastPosition({required WatchHistoryEntity watchHistory});
  Future<List<WatchHistoryEntity>?> getLastPosition(
      {required WatchHistoryQueryFilter filter});
  Future<void> deleteAllHistory();
  Future<void> deleteWatchHistoryList({required WatchHistoryQueryFilter filter});
  Future<WatchHistoryEntity> createWatchHistory({required WatchHistoryEntity watchHistory});
}
