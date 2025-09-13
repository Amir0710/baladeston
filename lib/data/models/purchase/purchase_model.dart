// data/models/purchase_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_model.freezed.dart';
part 'purchase_model.g.dart';

@freezed
abstract class PurchaseModel with _$PurchaseModel {
  const factory PurchaseModel({
    required int? id,
    required String status, // edit im add default in database
    required int userId,
    required int categoryId, // edit unnecessary
    required int? discountId,
    required double finalPrice,
    required DateTime purchaseTime,  // edit can be nullable
    required DateTime? expiresAt,
    required DateTime createdAt, // edit unnecessary
    required DateTime? updateAt,

  }) = _PurchaseModel;

  factory PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseModelFromJson(json);
}
