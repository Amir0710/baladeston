
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_history_entity.freezed.dart';

@freezed
abstract class WatchHistoryEntity with _$WatchHistoryEntity {
  const factory WatchHistoryEntity({
    required int userId,
    required int videoId,
     int? lastPositionSeconds,
     DateTime? updatedAt,
  }) = _WatchHistoryEntity;
}
