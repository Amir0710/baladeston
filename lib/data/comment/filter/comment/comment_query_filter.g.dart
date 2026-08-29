// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentQueryFilterImpl _$$CommentQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CommentQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$CommentQueryFilterImpl(
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          userId: $checkedConvert('userId', (v) => (v as num?)?.toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num?)?.toInt()),
          commentType: $checkedConvert('commentType',
              (v) => $enumDecodeNullable(_$CommentTypeEnumMap, v)),
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$CommentStatusEnumMap, v)),
          orderBy: $checkedConvert(
              'orderBy',
              (v) =>
                  $enumDecodeNullable(_$CommentOrderEnumMap, v) ??
                  CommentOrder.createdAt),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          cursor: $checkedConvert('cursor', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CommentQueryFilterImplToJson(
        _$CommentQueryFilterImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'userId': instance.userId,
      'targetId': instance.targetId,
      'commentType': _$CommentTypeEnumMap[instance.commentType],
      'searchTerm': instance.searchTerm,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'status': _$CommentStatusEnumMap[instance.status],
      'orderBy': _$CommentOrderEnumMap[instance.orderBy]!,
      'ascending': instance.ascending,
      'limit': instance.limit,
      'cursor': instance.cursor,
    };

const _$CommentTypeEnumMap = {
  CommentType.category: 'category',
  CommentType.categoryItem: 'categoryItem',
  CommentType.collection: 'collection',
  CommentType.collectionItem: 'collectionItem',
  CommentType.video: 'video',
  CommentType.user: 'user',
};

const _$CommentStatusEnumMap = {
  CommentStatus.deleted: 'deleted',
  CommentStatus.active: 'active',
};

const _$CommentOrderEnumMap = {
  CommentOrder.createdAt: 'createdAt',
  CommentOrder.rate: 'rate',
};
