// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) =>
    _FavoriteModel(
      userId: (json['userId'] as num).toInt(),
      type: json['type'] as String,
      targetId: (json['targetId'] as num).toInt(),
      interestedIn: DateTime.parse(json['interestedIn'] as String),
    );

Map<String, dynamic> _$FavoriteModelToJson(_FavoriteModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'type': instance.type,
      'targetId': instance.targetId,
      'interestedIn': instance.interestedIn.toIso8601String(),
    };
