// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryItemQueryFilterImpl _$$CategoryItemQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CategoryItemQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$CategoryItemQueryFilterImpl(
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          minCount: $checkedConvert('minCount', (v) => (v as num?)?.toInt()),
          maxCount: $checkedConvert('maxCount', (v) => (v as num?)?.toInt()),
          minPrice: $checkedConvert('minPrice', (v) => (v as num?)?.toInt()),
          maxPrice: $checkedConvert('maxPrice', (v) => (v as num?)?.toInt()),
          categoryId:
              $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
          adderId: $checkedConvert('adderId', (v) => (v as num?)?.toInt()),
          collectionId:
              $checkedConvert('collectionId', (v) => (v as num?)?.toInt()),
          minRating:
              $checkedConvert('minRating', (v) => (v as num?)?.toDouble()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CategoryItemStatusEnumMap, v)),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          cursor: $checkedConvert('cursor', (v) => v as String?),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          order: $checkedConvert(
              'order',
              (v) =>
                  $enumDecodeNullable(_$CategoryOrderEnumMap, v) ??
                  CategoryOrder.createdAt),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CategoryItemQueryFilterImplToJson(
        _$CategoryItemQueryFilterImpl instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'ids': instance.ids,
      'minCount': instance.minCount,
      'maxCount': instance.maxCount,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'categoryId': instance.categoryId,
      'adderId': instance.adderId,
      'collectionId': instance.collectionId,
      'minRating': instance.minRating,
      'status': _$CategoryItemStatusEnumMap[instance.status],
      'limit': instance.limit,
      'cursor': instance.cursor,
      'ascending': instance.ascending,
      'order': _$CategoryOrderEnumMap[instance.order]!,
    };

const _$CategoryItemStatusEnumMap = {
  CategoryItemStatus.pending: 'pending',
  CategoryItemStatus.approved: 'approved',
  CategoryItemStatus.rejected: 'rejected',
  CategoryItemStatus.removed: 'removed',
};

const _$CategoryOrderEnumMap = {
  CategoryOrder.title: 'title',
  CategoryOrder.lastTransaction: 'lastTransaction',
  CategoryOrder.createdAt: 'createdAt',
};
