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
          categoryId:
              $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
          adderId: $checkedConvert('adderId', (v) => (v as num?)?.toInt()),
          collectionId:
              $checkedConvert('collectionId', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CategoryItemStatusEnumMap, v)),
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

Map<String, dynamic> _$$CategoryItemQueryFilterImplToJson(
        _$CategoryItemQueryFilterImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'adderId': instance.adderId,
      'collectionId': instance.collectionId,
      'status': _$CategoryItemStatusEnumMap[instance.status],
      'limit': instance.limit,
      'offset': instance.offset,
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
  CategoryOrder.created: 'created',
};
