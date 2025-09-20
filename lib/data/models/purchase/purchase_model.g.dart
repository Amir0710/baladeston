// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseModelImpl _$$PurchaseModelImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String,
      userId: (json['userId'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      discountId: (json['discountId'] as num?)?.toInt(),
      finalPrice: (json['finalPrice'] as num).toDouble(),
      purchaseTime: DateTime.parse(json['purchaseTime'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
    );

Map<String, dynamic> _$$PurchaseModelImplToJson(_$PurchaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'userId': instance.userId,
      'categoryId': instance.categoryId,
      'discountId': instance.discountId,
      'finalPrice': instance.finalPrice,
      'purchaseTime': instance.purchaseTime.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
    };
