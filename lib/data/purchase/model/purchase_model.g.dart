// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseModelImpl _$$PurchaseModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PurchaseModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PurchaseModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status', (v) => v as String?),
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
          discountId:
              $checkedConvert('discountId', (v) => (v as num?)?.toInt()),
          finalPrice:
              $checkedConvert('finalPrice', (v) => (v as num).toDouble()),
          purchaseTime: $checkedConvert('purchaseTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiresAt: $checkedConvert('expiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updateAt: $checkedConvert('updateAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PurchaseModelImplToJson(_$PurchaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'userId': instance.userId,
      'discountId': instance.discountId,
      'finalPrice': instance.finalPrice,
      'purchaseTime': instance.purchaseTime?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
    };
