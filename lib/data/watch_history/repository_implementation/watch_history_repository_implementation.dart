import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/watch_history/datasource/remote/watch_history_remote_datasource/watch_history_api.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/data/watch_history/mapper/watch_history_mapper.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure_mapper.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';

class WatchHistoryRepositoryImplementation implements WatchHistoryRepository {
  final WatchHistoryApi api;

  WatchHistoryRepositoryImplementation(this.api);

  @override
  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> createWatchHistory({
    required WatchHistoryEntity watchHistory,
  }) async {
    try {
      final model = watchHistory.toModel();

      final result = await api.createWatchHistory(watchHistory: model);

      return Result.success(result.toEntity());
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }

  @override
  Future<Result<WatchHistoryEntity, WatchHistoryFailure>>
      updateWatchHistoryById({
    required int id,
    required WatchHistoryEntity watchHistory,
  }) async {
    try {
      final model = watchHistory.toModel();

      final result = await api.updateWatchHistoryById(
        id: id,
        watchHistory: model,
      );

      return Result.success(result.toEntity());
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }

  @override
  Future<Result<List<WatchHistoryEntity>, WatchHistoryFailure>>
      updateWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
    required WatchHistoryEntity watchHistory,
  }) async {
    try {
      final model = watchHistory.toModel();

      final result = await api.updateWatchHistoryByFilter(
        filter: filter,
        watchHistory: model,
      );

      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }

  @override
  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> getWatchHistoryById({
    required int id,
  }) async {
    try {
      final result = await api.getWatchHistoryById(id: id);
      return Result.success(result.toEntity());
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }

  @override
  Future<Result<List<WatchHistoryEntity>, WatchHistoryFailure>>
      getWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
  }) async {
    try {
      final result = await api.getWatchHistoryByFilter(filter: filter);

      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }

  @override
  Future<Result<int, WatchHistoryFailure>> deleteWatchHistoryById({
    required int id,
  }) async {
    try {
      final result = await api.deleteWatchHistoryById(id: id);
      return Result.success(result);
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }

  @override
  Future<Result<List<int>, WatchHistoryFailure>> deleteWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
  }) async {
    try {
      final result = await api.deleteWatchHistoryByFilter(filter: filter);
      return Result.success(result);
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }

  @override
  Future<Result<int, WatchHistoryFailure>> countWatchHistory({
    required WatchHistoryQueryFilter filter,
  }) async {
    try {
      final result = await api.countWatchHistory(filter: filter);
      return Result.success(result);
    } catch (e) {
      return Result.failure(mapWatchHistoryException(e));
    }
  }
}
