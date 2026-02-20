import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';

part 'favorite_state.freezed.dart';



enum FavoriteStateError {
  errorWhileLoadingList,
  errorWhileLoadingSingle,
  errorWhileCreating,
  errorWhileUpdating,
  errorWhileDeletingById,
  errorWhileDeletingByFilter,
}


@freezed
class FavoriteState with _$FavoriteState {
const factory FavoriteState.initial() = _Initial;

// Fetch
const factory FavoriteState.fetchingList() = _FetchingList;
const factory FavoriteState.fetchingSingle() = _FetchingSingle;

// CRUD
const factory FavoriteState.creating() = _Creating;
const factory FavoriteState.updating() = _Updating;
const factory FavoriteState.deletingById() = _DeletingById;
const factory FavoriteState.deletingByFilter() = _DeletingByFilter;

// Success
const factory FavoriteState.successListLoaded({
required List<FavoriteEntity> favorites,
required int count,
}) = _SuccessListLoaded;

const factory FavoriteState.successSingleLoaded({
required FavoriteEntity favorite,
}) = _SuccessSingleLoaded;

// Error
const factory FavoriteState.error({
required FavoriteStateError error,
required String message,
}) = _Error;
}
