import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

enum AuthStateError {
  invalidCredentials,
  userNotFound,
  otpFailed,
  tokenExpired,
  unauthorized,
  networkError,
  unknownError,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.loggingIn() = _LoggingIn;

  const factory AuthState.sendingOtp() = _SendingOtp;

  const factory AuthState.checkingToken() = _CheckingToken;

  const factory AuthState.checkingUserExists() = _CheckingUserExists;

  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.otpSent({
    required VerificationEntity verification,
  }) = _OtpSent;

  const factory AuthState.tokenChecked({
    required bool isValid,
  }) = _TokenChecked;

  const factory AuthState.userExistsChecked({
    required bool exists,
  }) = _UserExistsChecked;

  const factory AuthState.failure({
    required String message,
  }) = _Failure;

  const factory AuthState.error({
    required AuthStateError error,
    required String? errorMessage,
  }) = _Error;
}
