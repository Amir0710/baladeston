import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';

part 'watch_history_state.freezed.dart';

@freezed
class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.initial() = _Initial;
  const factory WatchHistoryState.loading() = _Loading;
  const factory WatchHistoryState.error(String message) = _Error;

  const factory WatchHistoryState.lastPositionsLoaded(
    List<WatchHistoryEntity> historyList,
  ) = _LastPositionsLoaded;

  const factory WatchHistoryState.success([String? message]) = _Success;
}
