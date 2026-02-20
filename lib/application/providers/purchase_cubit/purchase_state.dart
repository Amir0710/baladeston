import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_state.freezed.dart';

enum PurchaseStateError {
  errorWhileLoadingList,
  errorWhileLoadingSingle,
  errorWhileCreating,
  errorWhileEditing,
  errorWhileDeletingById,
  errorWhileDeletingByFilter,
}

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.initial() = _Initial;

  // Fetch
  const factory PurchaseState.fetchingList() = _FetchingList;

  const factory PurchaseState.fetchingSingle() = _FetchingSingle;

  // CRUD
  const factory PurchaseState.creating() = _Creating;

  const factory PurchaseState.editing() = _Editing;

  const factory PurchaseState.deletingById() = _DeletingById;

  const factory PurchaseState.deletingByFilter() = _DeletingByFilter;

  // Success
  const factory PurchaseState.successListLoaded({
    required List<PurchaseEntity> purchases,
    required int count,
  }) = _SuccessListLoaded;

  const factory PurchaseState.successSingleLoaded({
    required PurchaseEntity purchase,
  }) = _SuccessSingleLoaded;

  // Error
  const factory PurchaseState.error({
    required PurchaseStateError error,
    required String message,
  }) = _Error;
}
