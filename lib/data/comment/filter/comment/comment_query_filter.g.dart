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
          userId: $checkedConvert('userId', (v) => (v as num?)?.toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num?)?.toInt()),
          commentType: $checkedConvert('commentType',
              (v) => $enumDecodeNullable(_$CommentTypeEnumMap, v)),
          content: $checkedConvert('content', (v) => v as String?),
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          minRating:
              $checkedConvert('minRating', (v) => (v as num?)?.toDouble()),
          maxRating:
              $checkedConvert('maxRating', (v) => (v as num?)?.toDouble()),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$CommentStatusEnumMap, v)),
          orderBy:
              $checkedConvert('orderBy', (v) => v as String? ?? 'createdAt'),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          offset: $checkedConvert('offset', (v) => (v as num?)?.toInt() ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CommentQueryFilterImplToJson(
        _$CommentQueryFilterImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'targetId': instance.targetId,
      'commentType': _$CommentTypeEnumMap[instance.commentType],
      'content': instance.content,
      'searchTerm': instance.searchTerm,
      'minRating': instance.minRating,
      'maxRating': instance.maxRating,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'status': _$CommentStatusEnumMap[instance.status],
      'orderBy': instance.orderBy,
      'ascending': instance.ascending,
      'limit': instance.limit,
      'offset': instance.offset,
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
