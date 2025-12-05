part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState.initial() = _Initial;
  const factory VerificationState.loading() = _Loading;
  const factory VerificationState.codeSent() = _CodeSent;
  const factory VerificationState.success() = _Success;
  const factory VerificationState.failure(String message) = _Failure;
  const factory VerificationState.resendSuccess() = _ResendSuccess;
  const factory VerificationState.tokenValid() = _TokenValid;
  const factory VerificationState.tokenInvalid() = _TokenInvalid;
  const factory VerificationState.otpVerified() = _OtpVerified;

}
