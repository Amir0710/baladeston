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
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CategoryItemStatusEnumMap, v)),
          addedAt: $checkedConvert(
              'addedAt', (v) => v == null ? null : DateTime.parse(v as String)),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          adderId: $checkedConvert('adderId', (v) => (v as num).toInt()),
          collectionId:
              $checkedConvert('collectionId', (v) => (v as num).toInt()),
          categoryId: $checkedConvert('categoryId', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CategoryItemModelImplToJson(
        _$CategoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$CategoryItemStatusEnumMap[instance.status],
      'addedAt': instance.addedAt?.toIso8601String(),
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'adderId': instance.adderId,
      'collectionId': instance.collectionId,
      'categoryId': instance.categoryId,
    };

const _$CategoryItemStatusEnumMap = {
  CategoryItemStatus.pending: 'pending',
  CategoryItemStatus.approved: 'approved',
  CategoryItemStatus.rejected: 'rejected',
  CategoryItemStatus.removed: 'removed',
};
