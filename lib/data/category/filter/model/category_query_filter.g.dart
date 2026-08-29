// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryQueryFilterImpl _$$CategoryQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CategoryQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$CategoryQueryFilterImpl(
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$CategoryStatusEnumMap, v)),
          type: $checkedConvert(
              'type', (v) => $enumDecodeNullable(_$CategoryTypeEnumMap, v)),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          minCount: $checkedConvert('minCount', (v) => (v as num?)?.toInt()),
          maxCount: $checkedConvert('maxCount', (v) => (v as num?)?.toInt()),
          minRating:
              $checkedConvert('minRating', (v) => (v as num?)?.toDouble()),
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

Map<String, dynamic> _$$CategoryQueryFilterImplToJson(
        _$CategoryQueryFilterImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'searchTerm': instance.searchTerm,
      'status': _$CategoryStatusEnumMap[instance.status],
      'type': _$CategoryTypeEnumMap[instance.type],
      'ownerId': instance.ownerId,
      'minCount': instance.minCount,
      'maxCount': instance.maxCount,
      'minRating': instance.minRating,
      'limit': instance.limit,
      'cursor': instance.cursor,
      'ascending': instance.ascending,
      'order': _$CategoryOrderEnumMap[instance.order]!,
    };

const _$CategoryStatusEnumMap = {
  CategoryStatus.active: 'active',
  CategoryStatus.inactive: 'inactive',
  CategoryStatus.archived: 'archived',
};

const _$CategoryTypeEnumMap = {
  CategoryType.root: 'root',
  CategoryType.published: 'published',
  CategoryType.organizational: 'organizational',
};

const _$CategoryOrderEnumMap = {
  CategoryOrder.title: 'title',
  CategoryOrder.lastTransaction: 'lastTransaction',
  CategoryOrder.createdAt: 'createdAt',
};
