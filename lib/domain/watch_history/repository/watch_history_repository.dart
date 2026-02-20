import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';

abstract class WatchHistoryRepository {

  /// Create watch history
  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> createWatchHistory({
    required WatchHistoryEntity watchHistory,
  });

  /// Update last watched position by id
  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> updateLastPositionById({
    required int id,
    required WatchHistoryEntity watchHistory,
  });

  /// Update last watched position bt filter
  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> updateLastPositionByFilter({
    required WatchHistoryQueryFilter filter,
    required WatchHistoryEntity watchHistory,
  });

  /// Get watch history by id
  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> getLastPositionById({
    required int id,
  });

  /// Get watch history list by filter
  Future<Result<List<WatchHistoryEntity>, WatchHistoryFailure>>
  getLastPositionByFilter({
    required WatchHistoryQueryFilter filter,
  });

  /// Delete watch history by id
  Future<Result<int, WatchHistoryFailure>> deleteWatchHistoryById({
    required int id,
  });

  /// Delete watch history by filter (bulk)
  Future<Result<List<int>, WatchHistoryFailure>> deleteWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
  });

  /// Count watch history by filter
  Future<Result<int, WatchHistoryFailure>> countWatchHistory({
    required WatchHistoryQueryFilter filter,
  });
}
