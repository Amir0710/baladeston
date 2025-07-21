// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Favorite _$FavoriteFromJson(Map<String, dynamic> json) => _Favorite(
      userId: (json['userId'] as num).toInt(),
      targetId: (json['targetId'] as num).toInt(),
      interestedIn: DateTime.parse(json['interestedIn'] as String),
    );

Map<String, dynamic> _$FavoriteToJson(_Favorite instance) => <String, dynamic>{
      'userId': instance.userId,
      'targetId': instance.targetId,
      'interestedIn': instance.interestedIn.toIso8601String(),
    };
