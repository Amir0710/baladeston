// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_item_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionItemQueryFilterImpl _$$CollectionItemQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CollectionItemQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectionItemQueryFilterImpl(
          collectionId:
              $checkedConvert('collectionId', (v) => (v as num?)?.toInt()),
          adderId: $checkedConvert('adderId', (v) => (v as num?)?.toInt()),
          videoId: $checkedConvert('videoId', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CollectionItemStatusEnumMap, v)),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          offset: $checkedConvert('offset', (v) => (v as num?)?.toInt() ?? 0),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          order: $checkedConvert(
              'order',
              (v) =>
                  $enumDecodeNullable(_$CollectionOrderEnumMap, v) ??
                  CollectionOrder.title),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectionItemQueryFilterImplToJson(
        _$CollectionItemQueryFilterImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'adderId': instance.adderId,
      'videoId': instance.videoId,
      'status': _$CollectionItemStatusEnumMap[instance.status],
      'limit': instance.limit,
      'offset': instance.offset,
      'ascending': instance.ascending,
      'order': _$CollectionOrderEnumMap[instance.order]!,
    };

const _$CollectionItemStatusEnumMap = {
  CollectionItemStatus.pending: 'pending',
  CollectionItemStatus.approved: 'approved',
  CollectionItemStatus.rejected: 'rejected',
  CollectionItemStatus.removed: 'removed',
};

const _$CollectionOrderEnumMap = {
  CollectionOrder.title: 'title',
  CollectionOrder.lastTransaction: 'lastTransaction',
  CollectionOrder.created: 'created',
  CollectionOrder.price: 'price',
  CollectionOrder.age: 'age',
};
