// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionQueryFilterImpl _$$ReactionQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ReactionQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$ReactionQueryFilterImpl(
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          userId: $checkedConvert('userId', (v) => (v as num?)?.toInt()),
          toggleId: $checkedConvert('toggleId', (v) => (v as num?)?.toInt()),
          interestedIn: $checkedConvert('interestedIn',
              (v) => v == null ? null : DateTime.parse(v as String)),
          reactionType: $checkedConvert('reactionType',
              (v) => $enumDecodeNullable(_$ReactionTypeEnumMap, v)),
          targetType: $checkedConvert(
              'targetType', (v) => $enumDecodeNullable(_$TargetTypeEnumMap, v)),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          offset: $checkedConvert('offset', (v) => (v as num?)?.toInt() ?? 0),
          orderBy: $checkedConvert(
              'orderBy',
              (v) =>
                  $enumDecodeNullable(_$ReactionOrderEnumMap, v) ??
                  ReactionOrder.interestedIn),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ReactionQueryFilterImplToJson(
        _$ReactionQueryFilterImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'userId': instance.userId,
      'toggleId': instance.toggleId,
      'interestedIn': instance.interestedIn?.toIso8601String(),
      'reactionType': _$ReactionTypeEnumMap[instance.reactionType],
      'targetType': _$TargetTypeEnumMap[instance.targetType],
      'ascending': instance.ascending,
      'limit': instance.limit,
      'offset': instance.offset,
      'orderBy': _$ReactionOrderEnumMap[instance.orderBy]!,
    };

const _$ReactionTypeEnumMap = {
  ReactionType.like: 'like',
  ReactionType.disLike: 'disLike',
  ReactionType.unlike: 'unlike',
  ReactionType.stared: 'stared',
  ReactionType.unstared: 'unstared',
  ReactionType.hate: 'hate',
  ReactionType.unhate: 'unhate',
  ReactionType.saved: 'saved',
  ReactionType.unsaved: 'unsaved',
};

const _$TargetTypeEnumMap = {
  TargetType.video: 'video',
  TargetType.comment: 'comment',
  TargetType.category: 'category',
  TargetType.collection: 'collection',
  TargetType.user: 'user',
};

const _$ReactionOrderEnumMap = {
  ReactionOrder.interestedIn: 'interestedIn',
};
