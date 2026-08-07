// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WatchHistoryModelImpl _$$WatchHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WatchHistoryModelImpl',
      json,
      ($checkedConvert) {
        final val = _$WatchHistoryModelImpl(
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
          videoId: $checkedConvert('videoId', (v) => (v as num).toInt()),
          lastPositionSeconds: $checkedConvert(
              'lastPositionSeconds', (v) => (v as num?)?.toInt()),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WatchHistoryModelImplToJson(
        _$WatchHistoryModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'videoId': instance.videoId,
      'lastPositionSeconds': instance.lastPositionSeconds,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
