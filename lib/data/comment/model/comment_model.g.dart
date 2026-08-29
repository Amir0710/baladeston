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
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          targetType: $checkedConvert(
              'targetType', (v) => $enumDecode(_$CommentTypeEnumMap, v)),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          rating: $checkedConvert('rating', (v) => (v as num).toDouble()),
          content: $checkedConvert('content', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$CommentStatusEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'targetType': _$CommentTypeEnumMap[instance.targetType]!,
      'targetId': instance.targetId,
      'rating': instance.rating,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'status': _$CommentStatusEnumMap[instance.status],
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
