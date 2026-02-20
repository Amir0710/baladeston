import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_entity.freezed.dart';

@freezed
abstract class PurchaseEntity with _$PurchaseEntity {
  const factory PurchaseEntity({
    int? id,
    String? status,
    required int userId,
    int? discountId,
    required double finalPrice,
     DateTime? purchaseTime,
    DateTime? expiresAt,
    DateTime? updateAt,
  }) = _PurchaseEntity;
}
