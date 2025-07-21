// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WatchHistory _$WatchHistoryFromJson(Map<String, dynamic> json) =>
    _WatchHistory(
      userId: (json['userId'] as num).toInt(),
      videoId: (json['videoId'] as num).toInt(),
      lastPositionSeconds: (json['lastPositionSeconds'] as num).toInt(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WatchHistoryToJson(_WatchHistory instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'videoId': instance.videoId,
      'lastPositionSeconds': instance.lastPositionSeconds,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
