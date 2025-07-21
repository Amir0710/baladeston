import 'package:baladeston/domain/entitys/discount/discount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discount_model.g.dart';

@JsonSerializable()
class DiscountModel {
  final int? userId;
  final int id;
  final int category;
  final int percent;
  final String status;
  final DateTime expiresAt;

  const DiscountModel({
    required this.userId,
    required this.id,
    required this.category,
    required this.percent,
    required this.status,
    required this.expiresAt,
  });

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountModelToJson(this);

  /// تبدیل به entity
  Discount toDomain() => Discount(
        userId: userId,
        id: id,
        category: category,
        percent: percent,
        status: status,
        expiresAt: expiresAt,
      );

  /// ساخت مدل از روی entity
  factory DiscountModel.fromDomain(Discount discount) => DiscountModel(
        userId: discount.userId,
        id: discount.id,
        category: discount.category,
        percent: discount.percent,
        status: discount.status,
        expiresAt: discount.expiresAt,
      );
}
