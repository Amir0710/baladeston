// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WatchHistoryModel _$WatchHistoryModelFromJson(Map<String, dynamic> json) =>
    _WatchHistoryModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      videoId: (json['videoId'] as num).toInt(),
      lastPositionSeconds: (json['lastPositionSeconds'] as num).toInt(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WatchHistoryModelToJson(_WatchHistoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'videoId': instance.videoId,
      'lastPositionSeconds': instance.lastPositionSeconds,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
