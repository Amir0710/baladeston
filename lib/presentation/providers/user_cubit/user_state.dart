import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;

  const factory UserState.success({
    required List<UserEntity> user,
    required int count,
  }) = _Success;

  const factory UserState.failure({
    required String message,
  }) = _Failure;

  const factory UserState.loginSuccess() = _LoginSuccess;

  const factory UserState.tokenValid() = _TokenValid;
  const factory UserState.tokenInvalid() = _TokenInvalid;
}
