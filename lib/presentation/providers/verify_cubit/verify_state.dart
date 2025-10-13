// part of verify_cubit.dart;

part of 'verify_cubit.dart';

@freezed
class VerifyState with _$VerifyState {
  const factory VerifyState.initial() = _Initial;
  const factory VerifyState.loading() = _Loading;
  const factory VerifyState.codeSent() = _CodeSent;
  const factory VerifyState.success() = _Success;
  const factory VerifyState.failure(String message) = _Failure;
  const factory VerifyState.resendSuccess() = _ResendSuccess;
}
