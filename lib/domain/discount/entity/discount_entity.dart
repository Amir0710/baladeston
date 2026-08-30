import 'package:baladeston/core/enum/discount/discount_status.dart';
import 'package:baladeston/core/enum/discount/discount_target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_entity.freezed.dart';

@freezed
abstract class DiscountEntity with _$DiscountEntity {
  const factory DiscountEntity({
    int? id,
    int? ownerId,
    required String code,
    String? title,
    int? amount,
    required int percent,
    DiscountTargetType? type,
    int? targetId,
    int? minOrderAmount,
    bool? firstOrderOnly,
    DiscountStatus? status,
    DateTime? createdAt,
    bool? userCreated,
    DateTime? expiresAt,
    int? maxUse,
    int? usage,
  }) = _DiscountEntity;
}
