import 'package:baladeston/domain/verification/failure/verification_failure.dart';

abstract class VerificationRequestEntityFailure extends VerificationDomainFailure {
  const VerificationRequestEntityFailure();
}

class VerificationRequestPhoneEmptyFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestPhoneEmptyFailure();
}

class VerificationRequestPhoneInvalidFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestPhoneInvalidFailure();
}

class VerificationRequestTargetIdRequiredFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestTargetIdRequiredFailure();
}

class VerificationRequestTargetIdInvalidFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestTargetIdInvalidFailure();
}

class VerificationRequestPurposeRequiredFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestPurposeRequiredFailure();
}

class VerificationRequestPurposeInvalidFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestPurposeInvalidFailure();
}

class VerificationRequestNotAllowedForPurposeFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestNotAllowedForPurposeFailure();
}

class VerificationRequestRateLimitExceededFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestRateLimitExceededFailure();
}

class VerificationRequestBlockedPhoneFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestBlockedPhoneFailure();
}

class VerificationRequestNoUpdatableFieldsFailure
    extends VerificationRequestEntityFailure {
  const VerificationRequestNoUpdatableFieldsFailure();
}
