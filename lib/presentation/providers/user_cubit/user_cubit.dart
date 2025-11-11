import 'package:baladeston/domain/usecase/user/count_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_user_by_filter_usecase.dart';
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

  UserQueryFilter? _lastFilter;

  UserCubit({
    required CountUsersUseCase countUseCase,
    required GetUsersByFilterUseCase getByFilterUseCase,
    required GetUserByIdUseCase getByIdUseCase,
    required CreateUserUseCase createUseCase,
    required UpdateUserUseCase updateUseCase,
    required DeleteUserByIdUseCase deleteByIdUseCase,
    required DeleteUserByFilterUseCase deleteByFilterUseCase,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        super(const UserState.initial());

  /// بارگذاری کاربران با فیلتر
  Future<void> loadUsers([UserQueryFilter? filter]) async {
    emit(const UserState.loading());
    try {
      final f = filter ?? UserQueryFilter();
      _lastFilter = f;
      final users = await _getByFilterUseCase(filter: f);
      final count = await _countUseCase(filter: f);
      emit(UserState.success(user: users ?? [], count: 10));
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// رفرش لیست با آخرین فیلتر
  Future<void> refreshFilter() async {
    await loadUsers(_lastFilter);
  }

  /// گرفتن کاربر بر اساس ID
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

  /// ایجاد کاربر
  Future<void> createUser(UserEntity user) async {
    emit(const UserState.loading());
    try {
      await _createUseCase(user);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// بروزرسانی کاربر
  Future<void> updateUser(UserEntity user) async {
    emit(const UserState.loading());
    try {
      await _updateUseCase(user);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// حذف بر اساس ID
  Future<void> deleteUserById(int id) async {
    emit(const UserState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// حذف بر اساس فیلتر
  Future<void> deleteUsersByFilter(UserQueryFilter filter) async {
    emit(const UserState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await refreshFilter();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }
}
