import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
// UseCases
import 'package:baladeston/domain/user/usecase/count_user/count_user_usecase.dart';
import 'package:baladeston/domain/user/usecase/delete_user_by_filter/delete_user_by_filter_usecase.dart';
import 'package:baladeston/domain/user/usecase/delete_user_by_id/delete_user_by_id_usecase.dart';
import 'package:baladeston/domain/user/usecase/get_user_by_filter/get_user_by_filter_usecase.dart';
import 'package:baladeston/domain/user/usecase/get_user_by_id/get_user_by_id_usecase.dart';
import 'package:baladeston/domain/user/usecase/update_user_by_filter/update_user_by_filter.dart';
import 'package:baladeston/domain/user/usecase/update_user_by_id/update_user_by_id_usecase.dart';
import 'package:bloc/bloc.dart';

import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final CountUserUseCase _countUseCase;
  final GetUserByFilterUseCase _getByFilterUseCase;
  final GetUserByIdUseCase _getByIdUseCase;
  final UpdateUserByIdUseCase _updateByIdUseCase;
  final UpdateUserByFilterUseCase _updateByFilterUseCase;
  final DeleteUserByIdUseCase _deleteByIdUseCase;
  final DeleteUserByFilterUseCase _deleteByFilterUseCase;

  UserQueryFilter? _lastFilter;

  UserCubit({
    required CountUserUseCase countUseCase,
    required GetUserByFilterUseCase getByFilterUseCase,
    required GetUserByIdUseCase getByIdUseCase,
    required UpdateUserByIdUseCase updateByIdUseCase,
    required UpdateUserByFilterUseCase updateByFilterUseCase,
    required DeleteUserByIdUseCase deleteByIdUseCase,
    required DeleteUserByFilterUseCase deleteByFilterUseCase,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        super(const UserState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                   List                                     */
  /* -------------------------------------------------------------------------- */

  Future<void> loadUserByFilter({required UserQueryFilter filter}) async {
    emit(const UserState.fetchingMultiUser());

    _lastFilter = filter;

    final usersResult = await _getByFilterUseCase(filter: filter);

    usersResult.when(
      success: (users) async {
        int count = users.length;

        final countResult = await _countUseCase(filter: filter);
        countResult.when(
          success: (value) => count = value,
          failure: (_) {},
        );

        emit(
          UserState.fetchedMultiUser(
            users: users,
            count: count,
          ),
        );
      },
      failure: (failure) => emit(
        UserState.error(
          error: UserStateError.errorWhileFetchingUser,
          message: failure.toString(),
        ),
      ),
    );
  }

  Future<void> refresh() async {
    if (_lastFilter != null) {
      await loadUserByFilter(filter: _lastFilter!);
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Single                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> loadUserById({required int id}) async {
    emit(const UserState.fetchingSingleUser());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (user) => emit(
        UserState.fetchedSingleUser(
          user: user,
        ),
      ),
      failure: (failure) => emit(
        UserState.error(
          error: UserStateError.errorWhileFetchingUser,
          message: failure.toString(),
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Update                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> updateUserById({
    required int id,
    required UserEntity user,
  }) async {
    emit(const UserState.updatingSingleUser());

    final result = await _updateByIdUseCase(
      userId: id,
      user: user,
    );

    result.when(
      success: (user) => emit(UserState.updatedSingleUser(user: user)),
      failure: (failure) => emit(
        UserState.error(
          error: UserStateError.errorWhileUpdatingUser,
          message: failure.toString(),
        ),
      ),
    );
  }

  Future<void> updateUserByFilter({
    required UserQueryFilter filter,
    required UserEntity user,
  }) async {
    emit(const UserState.updatingMultiUser());

    final result = await _updateByFilterUseCase(
      filter: filter,
      user: user,
    );

    result.when(
      success: (user) => emit(UserState.updatedMultiUser(user: user)),
      failure: (failure) => emit(
        UserState.error(
          error: UserStateError.errorWhileUpdatingUser,
          message: failure.toString(),
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Delete                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> deleteUserById({
    required int id,
    required UserQueryFilter refreshFilter,
  }) async {
    emit(const UserState.deletingSingleUser());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (id) => emit(UserState.deletedSingleUser(userId: id)),
      failure: (failure) => emit(
        UserState.error(
          error : UserStateError.errorWhileDeletingUser,
          message: failure.toString(),
        ),
      ),
    );
  }

  Future<void> deleteUserByFilter({
    required UserQueryFilter filter,
  }) async {
    emit(const UserState.deletingMultiUser());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.when(
      success:(id) => emit(UserState.deletedMultiUser(affectedCount: id)),
      failure: (failure) => emit(
        UserState.error(
          error: UserStateError.errorWhileDeletingUser,
          message: failure.toString(),
        ),
      ),
    );
  }
}
