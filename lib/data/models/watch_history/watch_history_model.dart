
// data/models/watch_history_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_history_model.freezed.dart';
part 'watch_history_model.g.dart';

@freezed
abstract class WatchHistoryModel with _$WatchHistoryModel {
  const factory WatchHistoryModel({
    required int? id , // edit unnecessary
    required int userId,
    required int videoId,
    required int lastPositionSeconds, // edit nullable
    required DateTime updatedAt, // edit nullable
  }) = _WatchHistoryModel;

  factory WatchHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoryModelFromJson(json);
}
