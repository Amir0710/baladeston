import 'package:baladeston/core/enum/discount/discount_status.dart';
import 'package:baladeston/core/enum/discount/discount_target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';

part 'discount_model.g.dart';

@freezed
abstract class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    int? id,
    int? ownerId,
    required String code , // discount code
    String? title , // description
    int? amount, // max fixed Amount , It can have infinite value.
    required int percent,
    DiscountTargetType? type ,
    int? targetId,
    int? minOrderAmount,
    bool? firstOrderOnly,
    DiscountStatus? status,
    DateTime? createdAt ,
    bool? userCreated ,
    DateTime? expiresAt,
    int? maxUse,
    int? usage,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
