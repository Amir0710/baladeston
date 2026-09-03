// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionModelImpl _$$ReactionModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ReactionModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ReactionModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          interestedIn: $checkedConvert('interestedIn',
              (v) => v == null ? null : DateTime.parse(v as String)),
          reactionType: $checkedConvert(
              'reactionType', (v) => $enumDecode(_$ReactionTypeEnumMap, v)),
          targetType: $checkedConvert(
              'targetType', (v) => $enumDecode(_$TargetTypeEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ReactionModelImplToJson(_$ReactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'targetId': instance.targetId,
      'interestedIn': instance.interestedIn?.toIso8601String(),
      'reactionType': _$ReactionTypeEnumMap[instance.reactionType]!,
      'targetType': _$TargetTypeEnumMap[instance.targetType]!,
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
