// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteModelImpl _$$FavoriteModelImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      targetId: (json['targetId'] as num).toInt(),
      interestedIn: json['interestedIn'] == null
          ? null
          : DateTime.parse(json['interestedIn'] as String),
      type: $enumDecode(_$FavoriteTypeEnumMap, json['type']),
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
