// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectionModel _$CollectionModelFromJson(Map<String, dynamic> json) =>
    _CollectionModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      password: json['password'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      ownerId: (json['ownerId'] as num).toInt(),
      lastTransaction: DateTime.parse(json['lastTransaction'] as String),
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$CollectionModelToJson(_CollectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'password': instance.password,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'ownerId': instance.ownerId,
      'lastTransaction': instance.lastTransaction.toIso8601String(),
      'thumbnailUrl': instance.thumbnailUrl,
    };
