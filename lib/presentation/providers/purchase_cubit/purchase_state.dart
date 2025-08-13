import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';

part 'purchase_state.freezed.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.initial() = _Initial;

  const factory PurchaseState.loading() = _Loading;

  const factory PurchaseState.success({
    required List<PurchaseEntity> purchases,
    required int count,
  }) = _Success;

  const factory PurchaseState.failure({
    required String message,
  }) = _Failure;
}
