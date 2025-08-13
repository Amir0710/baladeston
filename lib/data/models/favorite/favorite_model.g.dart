// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) =>
    _FavoriteModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      type: json['type'] as String,
      targetId: (json['targetId'] as num).toInt(),
      interestedIn: json['interestedIn'] == null
          ? null
          : DateTime.parse(json['interestedIn'] as String),
    );

Map<String, dynamic> _$FavoriteModelToJson(_FavoriteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'targetId': instance.targetId,
      'interestedIn': instance.interestedIn?.toIso8601String(),
    };
