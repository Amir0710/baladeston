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
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          collectionId:
              $checkedConvert('collectionId', (v) => (v as num?)?.toInt()),
          adderId: $checkedConvert('adderId', (v) => (v as num?)?.toInt()),
          videoId: $checkedConvert('videoId', (v) => (v as num?)?.toInt()),
          minRating:
              $checkedConvert('minRating', (v) => (v as num?)?.toDouble()),
          minPrice: $checkedConvert('minPrice', (v) => (v as num?)?.toDouble()),
          maxPrice: $checkedConvert('maxPrice', (v) => (v as num?)?.toDouble()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CollectionItemStatusEnumMap, v)),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          cursor: $checkedConvert('cursor', (v) => v as String?),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          order: $checkedConvert(
              'order',
              (v) =>
                  $enumDecodeNullable(_$CollectionOrderEnumMap, v) ??
                  CollectionOrder.createdAt),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectionItemQueryFilterImplToJson(
        _$CollectionItemQueryFilterImpl instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'ids': instance.ids,
      'collectionId': instance.collectionId,
      'adderId': instance.adderId,
      'videoId': instance.videoId,
      'minRating': instance.minRating,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'status': _$CollectionItemStatusEnumMap[instance.status],
      'limit': instance.limit,
      'cursor': instance.cursor,
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
  CollectionOrder.createdAt: 'createdAt',
  CollectionOrder.price: 'price',
  CollectionOrder.age: 'age',
};
