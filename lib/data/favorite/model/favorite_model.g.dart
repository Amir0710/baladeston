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
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          interestedIn: $checkedConvert('interestedIn',
              (v) => v == null ? null : DateTime.parse(v as String)),
          favoriteType: $checkedConvert(
              'favoriteType', (v) => $enumDecode(_$FavoriteTypeEnumMap, v)),
          targetType: $checkedConvert(
              'targetType', (v) => $enumDecode(_$TargetTypeEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$FavoriteModelImplToJson(_$FavoriteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'targetId': instance.targetId,
      'interestedIn': instance.interestedIn?.toIso8601String(),
      'favoriteType': _$FavoriteTypeEnumMap[instance.favoriteType]!,
      'targetType': _$TargetTypeEnumMap[instance.targetType]!,
    };

const _$FavoriteTypeEnumMap = {
  FavoriteType.like: 'like',
  FavoriteType.starred: 'starred',
  FavoriteType.hate: 'hate',
  FavoriteType.disLike: 'disLike',
};

const _$TargetTypeEnumMap = {
  TargetType.video: 'video',
  TargetType.comment: 'comment',
  TargetType.category: 'category',
  TargetType.collection: 'collection',
};
