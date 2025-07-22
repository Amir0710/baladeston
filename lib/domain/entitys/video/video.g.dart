// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Video _$VideoFromJson(Map<String, dynamic> json) => _Video(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      videoUrl: json['videoUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      status: json['status'] as String,
      uploaderId: (json['uploaderId'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$VideoToJson(_Video instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'status': instance.status,
      'uploaderId': instance.uploaderId,
      'categoryId': instance.categoryId,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
    };
