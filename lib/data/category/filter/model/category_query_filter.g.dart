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
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          searchId: $checkedConvert('searchId', (v) => (v as num?)?.toInt()),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$CategoryStatusEnumMap, v)),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          minCount: $checkedConvert('minCount', (v) => (v as num?)?.toInt()),
          maxCount: $checkedConvert('maxCount', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          offset: $checkedConvert('offset', (v) => (v as num?)?.toInt() ?? 0),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          order: $checkedConvert(
              'order',
              (v) =>
                  $enumDecodeNullable(_$CategoryOrderEnumMap, v) ??
                  CategoryOrder.title),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CategoryQueryFilterImplToJson(
        _$CategoryQueryFilterImpl instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'searchId': instance.searchId,
      'status': _$CategoryStatusEnumMap[instance.status],
      'ownerId': instance.ownerId,
      'minCount': instance.minCount,
      'maxCount': instance.maxCount,
      'limit': instance.limit,
      'offset': instance.offset,
      'ascending': instance.ascending,
      'order': _$CategoryOrderEnumMap[instance.order]!,
    };

const _$CategoryStatusEnumMap = {
  CategoryStatus.active: 'active',
  CategoryStatus.inactive: 'inactive',
  CategoryStatus.archived: 'archived',
};

const _$CategoryOrderEnumMap = {
  CategoryOrder.title: 'title',
  CategoryOrder.lastTransaction: 'lastTransaction',
  CategoryOrder.created: 'created',
};
