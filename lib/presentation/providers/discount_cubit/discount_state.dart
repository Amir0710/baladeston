import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/discount/discount_entity.dart';

part 'discount_state.freezed.dart';

@freezed
class DiscountState with _$DiscountState {
  /// وضعیت اولیه
  const factory DiscountState.initial() = _Initial;

  /// در حال بارگذاری
  const factory DiscountState.loading() = _Loading;

  /// موفقیت – شامل لیست تخفیف‌ها و تعداد کل
  const factory DiscountState.success({
    required List<DiscountEntity> discounts,
    required int count,
  }) = _Success;

  /// خطا
  const factory DiscountState.failure({
    required String message,
  }) = _Failure;
}
