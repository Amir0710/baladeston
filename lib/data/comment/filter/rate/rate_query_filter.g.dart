// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateQueryFilterImpl _$$RateQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RateQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$RateQueryFilterImpl(
          targetType: $checkedConvert(
              'targetType', (v) => $enumDecode(_$CommentTypeEnumMap, v)),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RateQueryFilterImplToJson(
        _$RateQueryFilterImpl instance) =>
    <String, dynamic>{
      'targetType': _$CommentTypeEnumMap[instance.targetType]!,
      'targetId': instance.targetId,
    };

const _$CommentTypeEnumMap = {
  CommentType.category: 'category',
  CommentType.categoryItem: 'categoryItem',
  CommentType.collection: 'collection',
  CommentType.collectionItem: 'collectionItem',
  CommentType.video: 'video',
  CommentType.user: 'user',
};
