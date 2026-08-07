import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_response/verification_response_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_state.freezed.dart';

enum VerificationStateError {
  network,
  timeout,
  server,
  validation,
  invalidCode,
  expiredCode,
  unauthorized,
  unknown,
}

@freezed
class VerificationState with _$VerificationState {
  const VerificationState._();

  // --------------------------------------------------
  // Error Types (UI level)
  // --------------------------------------------------

  const factory VerificationState.initial() = _Initial;

  const factory VerificationState.loading() = _Loading;

  // --------------------------------------------------
  // Request OTP
  // --------------------------------------------------

  const factory VerificationState.requestingCode() = _RequestingCode;

  const factory VerificationState.codeRequested({
    required VerificationResponseEntity response,
  }) = _CodeRequested;

  // --------------------------------------------------
  // Verify Login OTP
  // --------------------------------------------------

  const factory VerificationState.verifyingLoginCode() = _VerifyingLoginCode;

  const factory VerificationState.loginVerified({
    required AuthSessionEntity session,
  }) = _LoginVerified;

  // --------------------------------------------------
  // Verify Action OTP
  // --------------------------------------------------

  const factory VerificationState.verifyingActionCode() = _VerifyingActionCode;

  const factory VerificationState.actionVerified({
    required bool success,
  }) = _ActionVerified;

  // --------------------------------------------------
  // Error
  // --------------------------------------------------

  const factory VerificationState.error({
    required VerificationStateError error,
    required VerificationFailure failure,
  }) = _Error;
}
