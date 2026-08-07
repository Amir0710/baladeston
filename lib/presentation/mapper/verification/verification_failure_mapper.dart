import 'package:baladeston/application/providers/verification_cubit/verification_state.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';

VerificationStateError mapVerificationFailureToStateError(
  VerificationFailure failure,
) {
  if (failure is VerificationNetworkFailure) {
    return VerificationStateError.network;
  }
  if (failure is VerificationTimeoutFailure) {
    return VerificationStateError.timeout;
  }
  if (failure is VerificationServerFailure) {
    return VerificationStateError.server;
  }
  if (failure is VerificationInvalidDataFailure) {
    return VerificationStateError.validation;
  }

  if (failure is VerificationValidationFailure) {
    return VerificationStateError.validation;
  }
  if (failure is VerificationCodeInvalidFailure) {
    return VerificationStateError.invalidCode;
  }
  if (failure is VerificationUserDataInvalidFailure) {
    return VerificationStateError.validation;
  }

  if (failure is VerificationAttemptExceededFailure) {
    return VerificationStateError.unauthorized;
  }
  if (failure is VerificationBlockedUserFailure) {
    return VerificationStateError.unauthorized;
  }

  if (failure is VerificationUnknownFailure) {
    return VerificationStateError.unknown;
  }

  return VerificationStateError.unknown;
}
