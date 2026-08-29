// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryItemModelImpl _$$CategoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CategoryItemModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CategoryItemModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          collectionId:
              $checkedConvert('collectionId', (v) => (v as num).toInt()),
          categoryId: $checkedConvert('categoryId', (v) => (v as num).toInt()),
          avgRate: $checkedConvert('avgRate', (v) => (v as num?)?.toDouble()),
          rageCount: $checkedConvert('rageCount', (v) => (v as num?)?.toInt()),
          thumbnailUrl: $checkedConvert('thumbnailUrl', (v) => v as String?),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CategoryItemStatusEnumMap, v)),
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          price: $checkedConvert('price', (v) => (v as num?)?.toInt()),
          addedAt: $checkedConvert(
              'addedAt', (v) => v == null ? null : DateTime.parse(v as String)),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          adderId: $checkedConvert('adderId', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CategoryItemModelImplToJson(
        _$CategoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'collectionId': instance.collectionId,
      'categoryId': instance.categoryId,
      'avgRate': instance.avgRate,
      'rageCount': instance.rageCount,
      'thumbnailUrl': instance.thumbnailUrl,
      'status': _$CategoryItemStatusEnumMap[instance.status],
      'count': instance.count,
      'price': instance.price,
      'addedAt': instance.addedAt?.toIso8601String(),
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'adderId': instance.adderId,
    };

const _$CategoryItemStatusEnumMap = {
  CategoryItemStatus.pending: 'pending',
  CategoryItemStatus.approved: 'approved',
  CategoryItemStatus.rejected: 'rejected',
  CategoryItemStatus.removed: 'removed',
};
