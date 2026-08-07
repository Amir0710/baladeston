// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionQueryFilterImpl _$$CollectionQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CollectionQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectionQueryFilterImpl(
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CollectionStatusEnumMap, v)),
          minCount: $checkedConvert('minCount', (v) => (v as num?)?.toInt()),
          maxCount: $checkedConvert('maxCount', (v) => (v as num?)?.toInt()),
          minPrice: $checkedConvert('minPrice', (v) => (v as num?)?.toInt()),
          maxPrice: $checkedConvert('maxPrice', (v) => (v as num?)?.toInt()),
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

Map<String, dynamic> _$$CollectionQueryFilterImplToJson(
        _$CollectionQueryFilterImpl instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'ownerId': instance.ownerId,
      'status': _$CollectionStatusEnumMap[instance.status],
      'minCount': instance.minCount,
      'maxCount': instance.maxCount,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'limit': instance.limit,
      'offset': instance.offset,
      'ascending': instance.ascending,
      'order': _$CollectionOrderEnumMap[instance.order]!,
    };

const _$CollectionStatusEnumMap = {
  CollectionStatus.draft: 'draft',
  CollectionStatus.published: 'published',
  CollectionStatus.hidden: 'hidden',
  CollectionStatus.archived: 'archived',
};

const _$CollectionOrderEnumMap = {
  CollectionOrder.title: 'title',
  CollectionOrder.lastTransaction: 'lastTransaction',
  CollectionOrder.created: 'created',
  CollectionOrder.price: 'price',
  CollectionOrder.age: 'age',
};
