// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CommentModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CommentModelImpl(
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          content: $checkedConvert('content', (v) => v as String),
          rating: $checkedConvert('rating', (v) => (v as num).toDouble()),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$CommentStatusEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'targetId': instance.targetId,
      'content': instance.content,
      'rating': instance.rating,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'status': _$CommentStatusEnumMap[instance.status]!,
    };

const _$CommentStatusEnumMap = {
  CommentStatus.deleted: 'deleted',
  CommentStatus.active: 'active',
};
