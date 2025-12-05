part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.codeSent() = _CodeSent;
  const factory AuthState.success() = _Success;
  const factory AuthState.failure(String message) = _Failure;
  const factory AuthState.resendSuccess() = _ResendSuccess;
  const factory AuthState.tokenValid() = _TokenValid;
  const factory AuthState.tokenInvalid() = _TokenInvalid;
  const factory AuthState.otpVerified() = _OtpVerified;

}
