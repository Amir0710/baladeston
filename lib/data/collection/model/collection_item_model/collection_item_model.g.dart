// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionItemModelImpl _$$CollectionItemModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CollectionItemModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectionItemModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CollectionItemStatusEnumMap, v)),
          addedAt: $checkedConvert(
              'addedAt', (v) => v == null ? null : DateTime.parse(v as String)),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          adderId: $checkedConvert('adderId', (v) => (v as num).toInt()),
          videoId: $checkedConvert('videoId', (v) => (v as num).toInt()),
          collectionId:
              $checkedConvert('collectionId', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectionItemModelImplToJson(
        _$CollectionItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$CollectionItemStatusEnumMap[instance.status],
      'addedAt': instance.addedAt?.toIso8601String(),
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'adderId': instance.adderId,
      'videoId': instance.videoId,
      'collectionId': instance.collectionId,
    };

const _$CollectionItemStatusEnumMap = {
  CollectionItemStatus.pending: 'pending',
  CollectionItemStatus.approved: 'approved',
  CollectionItemStatus.rejected: 'rejected',
  CollectionItemStatus.removed: 'removed',
};
