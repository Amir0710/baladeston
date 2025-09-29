import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_entity.freezed.dart';

@freezed
abstract class DiscountEntity with _$DiscountEntity {
  const factory DiscountEntity({
    int? userId,
    int? id,
    int? category,
    required int percent,
    String? status,
    DateTime? expiresAt,
    int? videoId,
    int? maxUse,
    int? usage,
  }) = _DiscountEntity;
}
