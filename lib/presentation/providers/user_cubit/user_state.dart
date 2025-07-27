import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/user/user_entity.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  /// وضعیت اولیه
  const factory UserState.initial() = _Initial;

  /// در حال بارگذاری
  const factory UserState.loading() = _Loading;

  /// لیست کاربران بارگذاری شد
  const factory UserState.usersLoaded({
    required List<UserEntity> users,
  }) = _UsersLoaded;

  /// کاربر جاری بارگذاری شد
  const factory UserState.currentUserLoaded({
    required UserEntity user,
  }) = _CurrentUserLoaded;

  /// عملیات موفق (ویرایش/حذف/تغییر کلمه‌عبور)
  const factory UserState.success() = _Success;

  /// خطا
  const factory UserState.failure({
    required String message,
  }) = _Failure;
}
