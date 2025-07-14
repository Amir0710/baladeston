// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Purchase _$PurchaseFromJson(Map<String, dynamic> json) => _Purchase(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      userId: (json['userId'] as num).toInt(),
      collectionId: (json['collectionId'] as num).toInt(),
      discountId: (json['discountId'] as num?)?.toInt(),
      finalPrice: (json['finalPrice'] as num).toDouble(),
      purchaseTime: DateTime.parse(json['purchaseTime'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$PurchaseToJson(_Purchase instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'userId': instance.userId,
      'collectionId': instance.collectionId,
      'discountId': instance.discountId,
      'finalPrice': instance.finalPrice,
      'purchaseTime': instance.purchaseTime.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
