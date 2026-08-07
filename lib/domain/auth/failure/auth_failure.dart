// ======================================================
// Base Failure
// ======================================================

abstract class AuthFailure {
  const AuthFailure();
}

// ======================================================
// Infrastructure Failures
// ======================================================

abstract class AuthInfrastructureFailure extends AuthFailure {
  const AuthInfrastructureFailure();
}

class AuthNetworkFailure extends AuthInfrastructureFailure {
  const AuthNetworkFailure();
}

class AuthServerFailure extends AuthInfrastructureFailure {
  const AuthServerFailure();
}

class AuthTimeoutFailure extends AuthInfrastructureFailure {
  const AuthTimeoutFailure();
}

class AuthInvalidResponseFailure extends AuthInfrastructureFailure {
  const AuthInvalidResponseFailure();
}

class AuthStorageFailure extends AuthInfrastructureFailure {
  const AuthStorageFailure();
}

class AuthInvalidDataFailure extends AuthInfrastructureFailure {
  const AuthInvalidDataFailure();
}

// ======================================================
// Domain Failures
// ======================================================

abstract class AuthDomainFailure extends AuthFailure {
  const AuthDomainFailure();
}

// ------------------------------------------------------
// Authentication Logic Failures
// ------------------------------------------------------

class AuthUserNotFoundFailure extends AuthDomainFailure {
  const AuthUserNotFoundFailure();
}

class AuthUnauthorizedFailure extends AuthDomainFailure {
  const AuthUnauthorizedFailure();
}

class AuthInvalidCredentialsFailure extends AuthDomainFailure {
  const AuthInvalidCredentialsFailure();
}

// ------------------------------------------------------
// Permission Failures
// ------------------------------------------------------

class AuthPermissionFailure extends AuthDomainFailure {
  const AuthPermissionFailure();
}

// ======================================================
// Unknown Failure
// ======================================================

class AuthUnknownFailure extends AuthFailure {
  const AuthUnknownFailure();
}
