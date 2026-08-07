import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';

part 'watch_history_state.freezed.dart';

enum WatchHistoryStateError {
  fetchFailed,
  createFailed,
  updateFailed,
  deleteFailed,
  countFailed,
}

@freezed
class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.initial() = _Initial;

  /// Fetch single
  const factory WatchHistoryState.fetchingMultiWatchHistory() = _FetchingMultiWatchHistory;
  const factory WatchHistoryState.fetchedMultiWatchHistory({
    required int count ,
    required List<WatchHistoryEntity> watchHistory,
  }) = _FetchedMultiWatchHistory;

  /// Fetch single
  const factory WatchHistoryState.fetchingSingleWatchHistory() = _FetchingSingleWatchHistory;
  const factory WatchHistoryState.fetchedSingleWatchHistory({
    required WatchHistoryEntity? watchHistory,
  }) = _FetchedSingleWatchHistory;

  /// Create
  const factory WatchHistoryState.creating() = _Creating;
  const factory WatchHistoryState.created({
    required WatchHistoryEntity watchHistory,
  }) = _Created;

  /// Update
  const factory WatchHistoryState.updatingWatchHistory() = _UpdatingWatchHistory;

  const factory WatchHistoryState.updatedSingleWatchHistory({
    required WatchHistoryEntity watchHistory,
  }) = _UpdatedSingleWatchHistory;

  const factory WatchHistoryState.updatedMultiWatchHistory({
    required List<WatchHistoryEntity> watchHistory,
    required int count ,
  }) = _UpdatedMultiWatchHistory;

  /// Delete
  const factory WatchHistoryState.deleting() = _Deleting;
  const factory WatchHistoryState.deletedSingleWatchHistory({
    required int id,
  }) = _DeletedSingleWatchHistory;

  const factory WatchHistoryState.deletedMultiWatchHistory({
    required List<int> ids,
    required int count ,
  }) = _DeletedMultiWatchHistory;

  /// Failure
  const factory WatchHistoryState.failure({
    required WatchHistoryFailure failure,
    required WatchHistoryStateError error,
  }) = _Failure;
}
