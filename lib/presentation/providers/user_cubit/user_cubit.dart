import 'package:baladeston/presentation/providers/user_cubit/user_state.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/usecase/user/change_password_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_users_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_user_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/user/update_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/delete_user_usecase.dart';

class UserCubit extends Cubit<UserState> {
  final ChangePasswordUseCase _changePasswordUseCase;
  final GetUsersUseCase _getUsersUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final UpdateUserUseCase _updateUserUseCase;
  final DeleteUserUseCase _deleteUserUseCase;

  UserCubit({
    required ChangePasswordUseCase changePasswordUseCase,
    required GetUsersUseCase getUsersUseCase,
    required GetCurrentUserUseCase getCurrentUserUseCase,
    required UpdateUserUseCase updateUserUseCase,
    required DeleteUserUseCase deleteUserUseCase,
  })  : _changePasswordUseCase = changePasswordUseCase,
        _getUsersUseCase = getUsersUseCase,
        _getCurrentUserUseCase = getCurrentUserUseCase,
        _updateUserUseCase = updateUserUseCase,
        _deleteUserUseCase = deleteUserUseCase,
        super(const UserState.initial());

  /// دریافت لیست کاربران با فیلتر
  Future<void> loadUsers({UserQueryFilter? filter}) async {
    emit(const UserState.loading());
    try {
      final f = filter ?? UserQueryFilter();
      final users = await _getUsersUseCase(f);
      emit(UserState.usersLoaded(users: users));
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// دریافت کاربر فعلی
  Future<void> loadCurrentUser() async {
    emit(const UserState.loading());
    try {
      final user = await _getCurrentUserUseCase();
      emit(UserState.currentUserLoaded(user: user));
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// ویرایش کاربر
  Future<void> updateUser(UserEntity user) async {
    emit(const UserState.loading());
    try {
      await _updateUserUseCase(user);
      emit(const UserState.success());
      // اختیاری: دوباره لیست را بازخوانی کنید
      await loadUsers();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// حذف کاربر
  Future<void> deleteUser(int userId) async {
    emit(const UserState.loading());
    try {
      await _deleteUserUseCase();
      emit(const UserState.success());
      await loadUsers();
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }

  /// تغییر کلمه‌عبور
  Future<void> changePassword(String newPassword) async {
    emit(const UserState.loading());
    try {
      await _changePasswordUseCase(newPassword);
      emit(const UserState.success());
    } catch (e) {
      emit(UserState.failure(message: e.toString()));
    }
  }
}
