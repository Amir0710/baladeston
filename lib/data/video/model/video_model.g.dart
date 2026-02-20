// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      description: json['description'] as String?,
      videoUrl: json['videoUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      status: json['status'] as String?,
      requiredAge: (json['requiredAge'] as num?)?.toInt(),
      videoDuration: (json['videoDuration'] as num?)?.toInt(),
      title: json['title'] as String,
      uploaderId: (json['uploaderId'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'status': instance.status,
      'requiredAge': instance.requiredAge,
      'videoDuration': instance.videoDuration,
      'title': instance.title,
      'uploaderId': instance.uploaderId,
      'categoryId': instance.categoryId,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
    };
