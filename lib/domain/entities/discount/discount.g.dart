// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Discount _$DiscountFromJson(Map<String, dynamic> json) => _Discount(
      userId: (json['userId'] as num?)?.toInt(),
      id: (json['id'] as num).toInt(),
      category: (json['category'] as num).toInt(),
      percent: (json['percent'] as num).toInt(),
      status: json['status'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$DiscountToJson(_Discount instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'category': instance.category,
      'percent': instance.percent,
      'status': instance.status,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
