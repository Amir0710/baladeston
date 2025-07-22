import 'package:baladeston/domain/entitys/purchase/purchase.dart';
import 'package:json_annotation/json_annotation.dart';

part 'purchase_model.g.dart';

@JsonSerializable()
class PurchaseModel {
  final int id;
  final String status;
  final int userId;
  final int categoryId;
  final int? discountId;
  final double finalPrice;
  final DateTime purchaseTime;
  final DateTime? expiresAt;
  final DateTime createdAt;

  const PurchaseModel({
    required this.id,
    required this.status,
    required this.userId,
    required this.categoryId,
    this.discountId,
    required this.finalPrice,
    required this.purchaseTime,
    this.expiresAt,
    required this.createdAt,
  });

  factory PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseModelToJson(this);

  /// تبدیل مدل به domain entity
  Purchase toDomain() => Purchase(
        id: id,
        status: status,
        userId: userId,
        categoryId: categoryId,
        discountId: discountId,
        finalPrice: finalPrice,
        purchaseTime: purchaseTime,
        expiresAt: expiresAt,
        createdAt: createdAt,
      );

  /// ساخت مدل از روی domain entity
  factory PurchaseModel.fromDomain(Purchase purchase) => PurchaseModel(
        id: purchase.id,
        status: purchase.status,
        userId: purchase.userId,
        discountId: purchase.discountId,
        finalPrice: purchase.finalPrice,
        purchaseTime: purchase.purchaseTime,
        expiresAt: purchase.expiresAt,
        categoryId: purchase.categoryId,
        createdAt: purchase.createdAt,
      );
}
