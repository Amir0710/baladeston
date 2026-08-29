// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountQueryFilterImpl _$$DiscountQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DiscountQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$DiscountQueryFilterImpl(
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          targetId: $checkedConvert('targetId', (v) => (v as num?)?.toInt()),
          targetType: $checkedConvert('targetType',
              (v) => $enumDecodeNullable(_$DiscountTargetTypeEnumMap, v)),
          title: $checkedConvert('title', (v) => v as String?),
          minPercent:
              $checkedConvert('minPercent', (v) => (v as num?)?.toInt()),
          maxPercent:
              $checkedConvert('maxPercent', (v) => (v as num?)?.toInt()),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$DiscountStatusEnumMap, v)),
          createAt: $checkedConvert('createAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          userCreated: $checkedConvert('userCreated', (v) => v as bool?),
          expiresAt: $checkedConvert('expiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          maxUse: $checkedConvert('maxUse', (v) => (v as num?)?.toInt()),
          usage: $checkedConvert('usage', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          offset: $checkedConvert('offset', (v) => (v as num?)?.toInt() ?? 0),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          order: $checkedConvert(
              'order',
              (v) =>
                  $enumDecodeNullable(_$DiscountOrderEnumMap, v) ??
                  DiscountOrder.expiresAt),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DiscountQueryFilterImplToJson(
        _$DiscountQueryFilterImpl instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'ids': instance.ids,
      'targetId': instance.targetId,
      'targetType': _$DiscountTargetTypeEnumMap[instance.targetType],
      'title': instance.title,
      'minPercent': instance.minPercent,
      'maxPercent': instance.maxPercent,
      'status': _$DiscountStatusEnumMap[instance.status],
      'createAt': instance.createAt?.toIso8601String(),
      'userCreated': instance.userCreated,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'maxUse': instance.maxUse,
      'usage': instance.usage,
      'limit': instance.limit,
      'offset': instance.offset,
      'ascending': instance.ascending,
      'order': _$DiscountOrderEnumMap[instance.order]!,
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

const _$DiscountOrderEnumMap = {
  DiscountOrder.id: 'id',
  DiscountOrder.code: 'code',
  DiscountOrder.expiresAt: 'expiresAt',
  DiscountOrder.createdAt: 'createdAt',
  DiscountOrder.percent: 'percent',
  DiscountOrder.amount: 'amount',
};
