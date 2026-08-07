import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

enum UserStateError {
  errorWhileUpdatingUser,
  errorWhileDeletingUser,
  errorWhileFetchingUser,
  errorWhileCountingUser,
}

@freezed
class UserState with _$UserState {
  /* -------------------------------------------------------------------------- */
  /*                                   Base                                     */
  /* -------------------------------------------------------------------------- */

  const factory UserState.initial() = _Initial;

  // const factory UserState.loading() = _Loading;

  const factory UserState.error({
    required UserStateError error,
    required String message,
  }) = _Error;

  /* -------------------------------------------------------------------------- */
  /*                                   Read                                     */
  /* -------------------------------------------------------------------------- */

  const factory UserState.fetchedMultiUser({
    required List<UserEntity> users,
    required int count,
  }) = _FetchedMultiUser;

  const factory UserState.fetchedSingleUser({
    required UserEntity user,
  }) = _FetchedSingleUser;

  const factory UserState.fetchingMultiUser() = _FetchingMultiUser;

  const factory UserState.fetchingSingleUser() = _FetchingSingleUser;

/* -------------------------------------------------------------------------- */
/*                                   Update                                   */
/* -------------------------------------------------------------------------- */

  const factory UserState.updatedSingleUser({
    required UserEntity user,
  }) = _UpdatedSingleUser;

  const factory UserState.updatedMultiUser({
    required List<UserEntity> user,
  }) = _UpdatedMultiUser;

  const factory UserState.updatingSingleUser() = _UpdatingSingleUser;

  const factory UserState.updatingMultiUser() = _UpdatingMultiUser;

/* -------------------------------------------------------------------------- */
/*                                   Delete                                   */
/* -------------------------------------------------------------------------- */

  const factory UserState.deletedSingleUser({
    required int userId,
  }) = _DeletedSingleUser;

  const factory UserState.deletedMultiUser({
    required List<int> affectedCount,
  }) = _DeletedMultiUser;

  const factory UserState.deletingSingleUser() = _DeletingSingleUser;

  const factory UserState.deletingMultiUser() = _DeletingMultiUser;
}
