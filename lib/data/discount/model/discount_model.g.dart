// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DiscountModelImpl',
      json,
      ($checkedConvert) {
        final val = _$DiscountModelImpl(
          userId: $checkedConvert('userId', (v) => (v as num?)?.toInt()),
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          categoryId:
              $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
          percent: $checkedConvert('percent', (v) => (v as num).toInt()),
          status: $checkedConvert('status', (v) => v as String?),
          expiresAt: $checkedConvert('expiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          videoId: $checkedConvert('videoId', (v) => (v as num?)?.toInt()),
          maxUse: $checkedConvert('maxUse', (v) => (v as num?)?.toInt()),
          usage: $checkedConvert('usage', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'percent': instance.percent,
      'status': instance.status,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'videoId': instance.videoId,
      'maxUse': instance.maxUse,
      'usage': instance.usage,
    };
