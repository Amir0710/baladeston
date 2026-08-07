import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

enum AuthStateError {
  network,
  timeout,
  server,
  validation,
  notFound,
  unauthorized,
  userExists,
  invalidCredentials,
  tokenExpired,
  unknown,
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.checkingUser() = _CheckingUser;

  const factory AuthState.userChecked({required bool exists}) = _UserChecked;

  const factory AuthState.loggingIn() = _LoggingIn;

  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.checkingToken() = _CheckingToken;

  const factory AuthState.refreshingToken() = _RefreshingToken;

  const factory AuthState.finishingOnboarding() = _FinishingOnboarding;

  const factory AuthState.skippingOnboarding() = _SkippingOnboarding;

  const factory AuthState.loggingOut() = _LoggingOut;

  const factory AuthState.error({
    required AuthStateError error,
    required AuthFailure failure,
  }) = _Error;
}
