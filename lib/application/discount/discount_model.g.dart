// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      category: (json['category'] as num?)?.toInt(),
      percent: (json['percent'] as num).toInt(),
      status: json['status'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      videoId: (json['videoId'] as num?)?.toInt(),
      maxUse: (json['maxUse'] as num?)?.toInt(),
      usage: (json['usage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'category': instance.category,
      'percent': instance.percent,
      'status': instance.status,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'videoId': instance.videoId,
      'maxUse': instance.maxUse,
      'usage': instance.usage,
    };
