import 'package:baladeston/domain/usecase/auth/check_token_usecase.dart';
import 'package:baladeston/domain/usecase/user/check_user_exists_usecase.dart';
import 'package:baladeston/domain/usecase/verification/check_verification_usecase.dart';
import 'package:baladeston/domain/usecase/user/count_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_user_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/user/login_usecase.dart';
import 'package:baladeston/domain/usecase/verification/send_verification_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/usecase/user/get_user_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/user/create_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/update_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/delete_user_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/user/delete_user_by_filter_usecase.dart';
import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final CountUsersUseCase _countUseCase;
  final GetUsersByFilterUseCase _getByFilterUseCase;
  final GetUserByIdUseCase _getByIdUseCase;
  final CreateUserUseCase _createUseCase;
  final UpdateUserUseCase _updateUseCase;
  final DeleteUserByIdUseCase _deleteByIdUseCase;
  final DeleteUserByFilterUseCase _deleteByFilterUseCase;
  final LoginUseCase _loginUseCase;
  final CheckUserExistsUseCase _checkUserExistsUseCase;


  UserQueryFilter? _lastFilter;

  UserCubit({
    required LoginUseCase loginUseCase,
    required CountUsersUseCase countUseCase,
    required GetUsersByFilterUseCase getByFilterUseCase,
    required GetUserByIdUseCase getByIdUseCase,
    required CreateUserUseCase createUseCase,
    required UpdateUserUseCase updateUseCase,
    required DeleteUserByIdUseCase deleteByIdUseCase,
    required DeleteUserByFilterUseCase deleteByFilterUseCase,
    required CheckUserExistsUseCase checkUserExistsUseCase,

  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _loginUseCase = loginUseCase,
        _checkUserExistsUseCase = checkUserExistsUseCase,

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
      emit(UserState.failure(message: e.toString()));
    }
  }

  Future<void> refreshFilter() async {
    await loadUsers(_lastFilter);
  }

  Future<void> login({
    required int userId,
    required String password,
  }) async {
    emit(const UserState.loading());
    try {
      await _loginUseCase(userId: userId, password: password);
      emit(const UserState.loginSuccess());
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
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
      emit(UserState.failure(message: e.toString()));
    }
  }

  Future<void> createUser(UserEntity user) async {
    emit(const UserState.loading());
    try {
      await _createUseCase(user);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  Future<void> updateUser(UserEntity user) async {
    emit(const UserState.loading());
    try {
      await _updateUseCase(user: user);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  Future<void> deleteUserById(int id) async {
    emit(const UserState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  Future<void> deleteUsersByFilter(UserQueryFilter filter) async {
    emit(const UserState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  Future<void> checkUserExists(String phoneNumber) async {
    emit(const UserState.loading());
    try {
      await _checkUserExistsUseCase(phoneNumber: phoneNumber);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }



}
