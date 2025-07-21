// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) =>
    FavoriteModel(
      userId: (json['userId'] as num).toInt(),
      targetId: (json['targetId'] as num).toInt(),
      interestedIn: DateTime.parse(json['interestedIn'] as String),
    );

Map<String, dynamic> _$FavoriteModelToJson(FavoriteModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'targetId': instance.targetId,
      'interestedIn': instance.interestedIn.toIso8601String(),
    };
