abstract class VerificationFailure {
  const VerificationFailure();
}

// ======================================================
// Infrastructure Failures
// ======================================================

abstract class VerificationInfrastructureFailure extends VerificationFailure {
  const VerificationInfrastructureFailure();
}

class VerificationNetworkFailure extends VerificationInfrastructureFailure {
  const VerificationNetworkFailure();
}

class VerificationServerFailure extends VerificationInfrastructureFailure {
  const VerificationServerFailure();
}

class VerificationTimeoutFailure extends VerificationInfrastructureFailure {
  const VerificationTimeoutFailure();
}

class VerificationInvalidDataFailure extends VerificationInfrastructureFailure {
  const VerificationInvalidDataFailure();
}

// ======================================================
// Domain Failures
// ======================================================

abstract class VerificationDomainFailure extends VerificationFailure {
  const VerificationDomainFailure();
}

// ------------------------------------------------------
// Validation Failures
// ------------------------------------------------------

abstract class VerificationValidationFailure
    extends VerificationDomainFailure {
  const VerificationValidationFailure();
}

class VerificationCodeInvalidFailure extends VerificationValidationFailure {
  const VerificationCodeInvalidFailure();
}

class VerificationUserDataInvalidFailure extends VerificationValidationFailure {
  const VerificationUserDataInvalidFailure();
}

// ------------------------------------------------------
// Business Rule Failures
// ------------------------------------------------------

class VerificationAttemptExceededFailure extends VerificationDomainFailure {
  const VerificationAttemptExceededFailure();
}

class VerificationBlockedUserFailure extends VerificationDomainFailure {
  const VerificationBlockedUserFailure();
}

// ======================================================
// Unknown Failure
// ======================================================

class VerificationUnknownFailure extends VerificationFailure {
  const VerificationUnknownFailure();
}
