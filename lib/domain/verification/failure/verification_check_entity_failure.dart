import 'package:baladeston/domain/verification/failure/verification_failure.dart';

abstract class VerificationCheckEntityFailure
    extends VerificationDomainFailure {
  const VerificationCheckEntityFailure();
}

// ======================================================
// Validation Failures
// ======================================================

class VerificationCheckPhoneEmptyFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckPhoneEmptyFailure();
}

class VerificationCheckPhoneInvalidFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckPhoneInvalidFailure();
}

class VerificationCheckOtpCodeEmptyFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckOtpCodeEmptyFailure();
}

class VerificationCheckOtpCodeInvalidFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckOtpCodeInvalidFailure();
}

class VerificationCheckPurposeRequiredFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckPurposeRequiredFailure();
}

class VerificationCheckPurposeInvalidFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckPurposeInvalidFailure();
}

// ======================================================
// Business Rule Failures
// ======================================================

class VerificationCheckCodeExpiredFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckCodeExpiredFailure();
}

class VerificationCheckCodeNotMatchedFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckCodeNotMatchedFailure();
}

class VerificationCheckAttemptExceededFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckAttemptExceededFailure();
}

class VerificationCheckBlockedPhoneFailure
    extends VerificationCheckEntityFailure {
  const VerificationCheckBlockedPhoneFailure();
}

// ======================================================
// Unknown Failure
// ======================================================

class VerificationCheckUnknownFailure extends VerificationCheckEntityFailure {
  const VerificationCheckUnknownFailure();
}
