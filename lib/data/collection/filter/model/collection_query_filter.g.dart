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
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CollectionStatusEnumMap, v)),
          type: $checkedConvert(
              'type', (v) => $enumDecodeNullable(_$CollectionTypeEnumMap, v)),
          minCount: $checkedConvert('minCount', (v) => (v as num?)?.toInt()),
          maxCount: $checkedConvert('maxCount', (v) => (v as num?)?.toInt()),
          minPrice: $checkedConvert('minPrice', (v) => (v as num?)?.toInt()),
          maxPrice: $checkedConvert('maxPrice', (v) => (v as num?)?.toInt()),
          minRating:
              $checkedConvert('minRating', (v) => (v as num?)?.toDouble()),
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

Map<String, dynamic> _$$CollectionQueryFilterImplToJson(
        _$CollectionQueryFilterImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'searchTerm': instance.searchTerm,
      'ownerId': instance.ownerId,
      'status': _$CollectionStatusEnumMap[instance.status],
      'type': _$CollectionTypeEnumMap[instance.type],
      'minCount': instance.minCount,
      'maxCount': instance.maxCount,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'minRating': instance.minRating,
      'limit': instance.limit,
      'cursor': instance.cursor,
      'ascending': instance.ascending,
      'order': _$CollectionOrderEnumMap[instance.order]!,
    };

const _$CollectionStatusEnumMap = {
  CollectionStatus.published: 'published',
  CollectionStatus.pendingApproval: 'pendingApproval',
  CollectionStatus.draft: 'draft',
  CollectionStatus.suspended: 'suspended',
  CollectionStatus.active: 'active',
  CollectionStatus.inactive: 'inactive',
};

const _$CollectionTypeEnumMap = {
  CollectionType.public: 'public',
  CollectionType.private: 'private',
  CollectionType.team: 'team',
};

const _$CollectionOrderEnumMap = {
  CollectionOrder.title: 'title',
  CollectionOrder.lastTransaction: 'lastTransaction',
  CollectionOrder.createdAt: 'createdAt',
  CollectionOrder.price: 'price',
  CollectionOrder.age: 'age',
};
