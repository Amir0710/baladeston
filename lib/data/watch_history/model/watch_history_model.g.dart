// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WatchHistoryModelImpl _$$WatchHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WatchHistoryModelImpl(
      userId: (json['userId'] as num).toInt(),
      videoId: (json['videoId'] as num).toInt(),
      lastPositionSeconds: (json['lastPositionSeconds'] as num?)?.toInt(),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$WatchHistoryModelImplToJson(
        _$WatchHistoryModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'videoId': instance.videoId,
      'lastPositionSeconds': instance.lastPositionSeconds,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
