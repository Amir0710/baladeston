import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/data/watch_history/model/watch_history_model.dart';

abstract class WatchHistoryApi {
  /// Create
  Future<WatchHistoryModel> createWatchHistory({
    required WatchHistoryModel watchHistory,
  });

  /// Update
  Future<WatchHistoryModel> updateLastPositionById({
    required int id,
    required WatchHistoryModel watchHistory,
  });

  Future<WatchHistoryModel> updateLastPositionByFilter({
    required WatchHistoryQueryFilter filter,
    required WatchHistoryModel watchHistory,
  });

  /// Read
  Future<WatchHistoryModel> getLastPositionById({
    required int id,
  });

  Future<List<WatchHistoryModel>> getLastPositionByFilter({
    required WatchHistoryQueryFilter filter,
  });

  /// Delete
  Future<int> deleteWatchHistoryById({
    required int id,
  });

  Future<List<int>> deleteWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
  });

  /// Count
  Future<int> countWatchHistory({
    required WatchHistoryQueryFilter filter,
  });
}
