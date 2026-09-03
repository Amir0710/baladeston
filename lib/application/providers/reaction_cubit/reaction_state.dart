import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';

part 'reaction_state.freezed.dart';

enum ReactionStateError {
  errorWhileLoadingList,
  errorWhileLoadingSingle,
  errorWhileCreating,
  errorWhileUpdating,
  errorWhileDeletingById,
  errorWhileDeletingByFilter,
}

@freezed
class ReactionState with _$ReactionState {
  const factory ReactionState.initial() = _Initial;

  // Fetch
  const factory ReactionState.fetchingList() = _FetchingList;
  const factory ReactionState.fetchingSingle() = _FetchingSingle;

  // CRUD
  const factory ReactionState.creating() = _Creating;
  const factory ReactionState.updating() = _Updating;
  const factory ReactionState.deletingById() = _DeletingById;
  const factory ReactionState.deletingByFilter() = _DeletingByFilter;

  // Success
  const factory ReactionState.successListLoaded({
    required List<ReactionEntity> reactions,
    required int count,
  }) = _SuccessListLoaded;

  const factory ReactionState.successSingleLoaded({
    required ReactionEntity reaction,
  }) = _SuccessSingleLoaded;

  // Error
  const factory ReactionState.error({
    required ReactionStateError error,
    required String message,
  }) = _Error;
}
