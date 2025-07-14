// class WatchHistory {
//   final int userId;
//   final int videoId;
//   final int lastPositionSeconds;
//   final DateTime updatedAt;

//   const WatchHistory({
//     required this.userId,
//     required this.videoId,
//     required this.lastPositionSeconds,
//     required this.updatedAt,
//   });
// }


import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_history.freezed.dart';
part 'watch_history.g.dart';

@freezed
class WatchHistory with _$WatchHistory {
  const factory WatchHistory({
    required int userId,
    required int videoId,
    required int lastPositionSeconds,
    required DateTime updatedAt,
  }) = _WatchHistory;

  factory WatchHistory.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoryFromJson(json);
}
