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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase.freezed.dart';
part 'purchase.g.dart';

@freezed
abstract class Purchase with _$Purchase {
  factory Purchase({
    required int id,
    required String status,
    required int userId,
    required int? discountId,
    required double finalPrice,
    required DateTime purchaseTime,
    required DateTime? expiresAt,
    required int categoryId,
    required DateTime createdAt,
  }) = _Purchase;

  factory Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);
}
