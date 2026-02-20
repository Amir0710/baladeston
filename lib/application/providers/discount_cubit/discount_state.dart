import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';

part 'discount_state.freezed.dart';

enum DiscountStateError {
  errorWhileLoadingList,
  errorWhileLoadingSingle,
  errorWhileCreating,
  errorWhileEditing,
  errorWhileDeletingById,
  errorWhileDeletingByFilter,
}

@freezed
class DiscountState with _$DiscountState {
  const factory DiscountState.initial() = _Initial;

  // Fetch states
  const factory DiscountState.fetchingList() = _FetchingList;
  const factory DiscountState.fetchingSingle() = _FetchingSingle;

  // CRUD states
  const factory DiscountState.creating() = _Creating;
  const factory DiscountState.editing() = _Editing;
  const factory DiscountState.deletingById() = _DeletingById;
  const factory DiscountState.deletingByFilter() = _DeletingByFilter;

  // Success
  const factory DiscountState.successListLoaded({
    required List<DiscountEntity> discounts,
    required int count,
  }) = _SuccessListLoaded;

  const factory DiscountState.successSingleLoaded({
    required DiscountEntity discount,
  }) = _SuccessSingleLoaded;

  // Errors
  const factory DiscountState.error({
    required DiscountStateError error,
    required String message,
  }) = _Error;
}


