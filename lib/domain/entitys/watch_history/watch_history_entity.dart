// class WatchHistory {
// final int userId;
// final int videoId;
// final int lastPositionSeconds;
// final DateTime updatedAt;

//   const WatchHistory({
//     required this.userId,
//     required this.videoId,
//     required this.lastPositionSeconds,
//     required this.updatedAt,
//   });
// }

// domain/entities/watch_history_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_history_entity.freezed.dart';

@freezed
abstract class WatchHistoryEntity with _$WatchHistoryEntity {
  const factory WatchHistoryEntity({
    required int id ,
    required int userId,
    required int videoId,
    required int lastPositionSeconds,
    required DateTime updatedAt,
  }) = _WatchHistoryEntity;
}
