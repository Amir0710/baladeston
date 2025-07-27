import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';

part 'purchase_state.freezed.dart';

@freezed
class PurchaseState with _$PurchaseState {
  /// وضعیت اولیه
  const factory PurchaseState.initial() = _Initial;

  /// در حال بارگذاری
  const factory PurchaseState.loading() = _Loading;

  /// لیست سفارش‌ها بارگذاری شده
  const factory PurchaseState.listLoaded({
    required List<PurchaseEntity> purchases,
  }) = _ListLoaded;

  /// جزئیات یک سفارش خاص بارگذاری شده
  const factory PurchaseState.detailLoaded({
    required PurchaseEntity purchase,
  }) = _DetailLoaded;

  /// عملیات موفقیت‌آمیز (پس از ایجاد یا ویرایش)
  const factory PurchaseState.success() = _Success;

  /// خطا
  const factory PurchaseState.failure({
    required String message,
  }) = _Failure;
}
