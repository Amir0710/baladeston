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
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          code: $checkedConvert('code', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toInt()),
          percent: $checkedConvert('percent', (v) => (v as num).toInt()),
          type: $checkedConvert('type',
              (v) => $enumDecodeNullable(_$DiscountTargetTypeEnumMap, v)),
          targetId: $checkedConvert('targetId', (v) => (v as num?)?.toInt()),
          minOrderAmount:
              $checkedConvert('minOrderAmount', (v) => (v as num?)?.toInt()),
          firstOrderOnly: $checkedConvert('firstOrderOnly', (v) => v as bool?),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$DiscountStatusEnumMap, v)),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          userCreated: $checkedConvert('userCreated', (v) => v as bool?),
          expiresAt: $checkedConvert('expiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          maxUse: $checkedConvert('maxUse', (v) => (v as num?)?.toInt()),
          usage: $checkedConvert('usage', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'code': instance.code,
      'title': instance.title,
      'amount': instance.amount,
      'percent': instance.percent,
      'type': _$DiscountTargetTypeEnumMap[instance.type],
      'targetId': instance.targetId,
      'minOrderAmount': instance.minOrderAmount,
      'firstOrderOnly': instance.firstOrderOnly,
      'status': _$DiscountStatusEnumMap[instance.status],
      'createdAt': instance.createdAt?.toIso8601String(),
      'userCreated': instance.userCreated,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'maxUse': instance.maxUse,
      'usage': instance.usage,
    };

const _$DiscountTargetTypeEnumMap = {
  DiscountTargetType.user: 'user',
  DiscountTargetType.video: 'video',
  DiscountTargetType.category: 'category',
  DiscountTargetType.collection: 'collection',
};

const _$DiscountStatusEnumMap = {
  DiscountStatus.draft: 'draft',
  DiscountStatus.active: 'active',
  DiscountStatus.scheduled: 'scheduled',
  DiscountStatus.paused: 'paused',
  DiscountStatus.exhausted: 'exhausted',
  DiscountStatus.expired: 'expired',
  DiscountStatus.disabled: 'disabled',
  DiscountStatus.archived: 'archived',
};
