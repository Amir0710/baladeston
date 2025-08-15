import 'package:baladeston/data/models/watch_history/watch_history_model.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';

abstract class WatchHistoryApi {
  Future<WatchHistoryModel> updateLastPosition(
      {required WatchHistoryModel watchHistory});
  Future<List<WatchHistoryModel>?> getLastPositionByFilter(
      {required WatchHistoryQueryFilter filter});
  Future<WatchHistoryModel?> getLastPositionById({required int id});
  Future<void> deleteWatchHistoryById({required int id});
  Future<void> deleteWatchHistoryByFilter(
      {required WatchHistoryQueryFilter filter});
  Future<WatchHistoryModel> createWatchHistory(
      {required WatchHistoryModel watchHistory});
     Future<int> countWatchHistory(
      {required WatchHistoryQueryFilter filter});   
}
