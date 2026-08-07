// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteModelImpl _$$FavoriteModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$FavoriteModelImpl',
      json,
      ($checkedConvert) {
        final val = _$FavoriteModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          interestedIn: $checkedConvert('interestedIn',
              (v) => v == null ? null : DateTime.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$FavoriteTypeEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$FavoriteModelImplToJson(_$FavoriteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'targetId': instance.targetId,
      'interestedIn': instance.interestedIn?.toIso8601String(),
      'type': _$FavoriteTypeEnumMap[instance.type]!,
    };

const _$FavoriteTypeEnumMap = {
  FavoriteType.video: 'video',
  FavoriteType.comment: 'comment',
  FavoriteType.category: 'category',
  FavoriteType.collection: 'collection',
};
