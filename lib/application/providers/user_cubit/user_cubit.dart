import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/auth/usecase/check_user_exists/check_user_exists_usecase.dart';
import 'package:baladeston/domain/user/usecase/count_user_usecase.dart';
import 'package:baladeston/domain/user/usecase/create_user_usecase.dart';
import 'package:baladeston/domain/user/usecase/delete_user_by_filter_usecase.dart';
import 'package:baladeston/domain/user/usecase/delete_user_by_id_usecase.dart';
import 'package:baladeston/domain/user/usecase/get_user_by_filter_usecase.dart';
import 'package:baladeston/domain/user/usecase/get_user_by_id_usecase.dart';
import 'package:baladeston/domain/user/usecase/update_user_usecase.dart';

import 'package:bloc/bloc.dart';

import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final CountUsersUseCase _countUseCase;
  final GetUsersByFilterUseCase _getByFilterUseCase;
  final GetUserByIdUseCase _getByIdUseCase;
  final CreateUserUseCase _createUseCase;
  final UpdateUserUseCase _updateUseCase;
  final DeleteUserByIdUseCase _deleteByIdUseCase;
  final DeleteUserByFilterUseCase _deleteByFilterUseCase;
  final CheckUserExistsUseCase _checkUserExistsUseCase ;

  UserQueryFilter? _lastFilter;

  UserCubit({
    required CountUsersUseCase countUseCase,
    required GetUsersByFilterUseCase getByFilterUseCase,
    required GetUserByIdUseCase getByIdUseCase,
    required CreateUserUseCase createUseCase,
    required UpdateUserUseCase updateUseCase,
    required DeleteUserByIdUseCase deleteByIdUseCase,
    required DeleteUserByFilterUseCase deleteByFilterUseCase,
    required CheckUserExistsUseCase checkExistsUseCase ,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _checkUserExistsUseCase = checkExistsUseCase,
        super(const UserState.initial());

  Future<void> loadUsers([UserQueryFilter? filter]) async {
    emit(const UserState.loading());
    try {
      final f = filter ?? UserQueryFilter();
      _lastFilter = f;
      final users = await _getByFilterUseCase(filter: f);
      final count = await _countUseCase(filter: f);
      emit(UserState.success(user: users ?? [], count: count));
    } catch (e) {
      emit(UserState.loginFailure(message: e.toString()));
    }
  }

  Future<void> refreshFilter() async {
    await loadUsers(_lastFilter);
  }


  Future<void> loadUserById(int id) async {
    emit(const UserState.loading());
    try {
      final user = await _getByIdUseCase(id: id);
      emit(UserState.success(
        user: user != null ? [user] : [],
        count: user != null ? 1 : 0,
      ));
    } catch (e) {
      emit(UserState.loginFailure(message: e.toString()));
    }
  }

  Future<void> createUser(UserEntity user) async {
    emit(const UserState.loading());
    try {
      await _createUseCase(user);
    } catch (e) {
      emit(UserState.loginFailure(message: e.toString()));
    }
  }

  Future<void> updateUser(UserEntity user) async {
    emit(const UserState.loading());
    try {
      await _updateUseCase(user: user);
      // await refreshFilter();
    } catch (e) {
      emit(UserState.loginFailure(message: e.toString()));
    }
  }

  Future<void> deleteUserById(int id) async {
    emit(const UserState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      // await refreshFilter();
    } catch (e) {
      emit(UserState.loginFailure(message: e.toString()));
    }
  }

  Future<void> deleteUsersByFilter(UserQueryFilter filter) async {
    emit(const UserState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
    } catch (e) {
      emit(UserState.loginFailure(message: e.toString()));
    }
  }

  Future<void> checkUserExists({required String phone})
  async {
    emit(const UserState.loading());
    try{
      await _checkUserExistsUseCase(phone : phone) ;
    }catch(e){
      emit(UserState.loginFailure(message: e.toString()));
    }

  }
}
