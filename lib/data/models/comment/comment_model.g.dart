// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      userId: (json['userId'] as num).toInt(),
      targetId: (json['targetId'] as num).toInt(),
      content: json['content'] as String,
      rating: (json['rating'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'targetId': instance.targetId,
      'content': instance.content,
      'rating': instance.rating,
      'createdAt': instance.createdAt.toIso8601String(),
    };
