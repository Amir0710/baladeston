// class Purchase {
//   final int id;
//   final String status ;
//   final int userId;
//   final int collectionId;
//   final int? discountId;
//   final double finalPrice;
//   final DateTime purchaseTime;
//   final DateTime? expiresAt;

//   const Purchase({
//     required this.status,
//     required this.id,
//     required this.userId,
//     required this.collectionId,
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
class Purchase with _$Purchase {
  const factory Purchase({
    required int id,
    required String status,
    required int userId,
    required int collectionId,
    int? discountId,
    required double finalPrice,
    required DateTime purchaseTime,
    DateTime? expiresAt,
  }) = _Purchase;

  factory Purchase.fromJson(Map<String, dynamic> json) => _$PurchaseFromJson(json);
}
