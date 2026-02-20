import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../application/providers/watch_history_cubit/watch_history_state.freezed.dart';

@freezed
class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.initial() = _Initial;
  const factory WatchHistoryState.loading() = _Loading;

  const factory WatchHistoryState.success({
    required List<WatchHistoryEntity> watchHistory,
    required int count,
  }) = _Success;

  const factory WatchHistoryState.failure({
    required String message,
  }) = _Failure;
}
