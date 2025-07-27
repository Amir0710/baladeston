// class Purchase {
//   final int id;
//   final String status ;
//   final int userId;
//   final int categoryId;
//   final int? discountId;
//   final double finalPrice;
//   final DateTime purchaseTime;
//   final DateTime? expiresAt;

//   const Purchase({
//     required this.status,
//     required this.id,
//     required this.userId,
//     required this.categoryId,
//     this.discountId,
//     required this.finalPrice,
//     required this.purchaseTime,
//     this.expiresAt,
//   });
// }
// domain/entities/purchase_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_entity.freezed.dart';

@freezed
abstract class PurchaseEntity with _$PurchaseEntity {
  const factory PurchaseEntity({
    required int id,
    required String status,
    required int userId,
    required int categoryId,
    required int? discountId,
    required double finalPrice,
    required DateTime purchaseTime,
    required DateTime? expiresAt,
    required DateTime createdAt,
  }) = _PurchaseEntity;
}
