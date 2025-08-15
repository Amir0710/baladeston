import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';

abstract class WatchHistoryRepository {
  Future<WatchHistoryEntity> updateLastPosition(
      {required WatchHistoryEntity watchHistory});
  Future<List<WatchHistoryEntity>?> getLastPositionByFilter(
      {required WatchHistoryQueryFilter filter});
  Future<WatchHistoryEntity?> getLastPositionById({required int id});
  Future<void> deleteWatchHistoryById({required int id});
  Future<void> deleteWatchHistoryByFilter(
      {required WatchHistoryQueryFilter filter});
  Future<WatchHistoryEntity> createWatchHistory(
      {required WatchHistoryEntity watchHistory});
     Future<int> countWatchHistory(
      {required WatchHistoryQueryFilter filter});   
}
