import 'package:baladeston/application/providers/auth_cubit/auth_state.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';

AuthStateError mapAuthFailureToStateError(AuthFailure failure) {
  // =========================
  // Infrastructure Failures
  // =========================

  if (failure is AuthNetworkFailure) {
    return AuthStateError.network;
  }

  if (failure is AuthTimeoutFailure) {
    return AuthStateError.timeout;
  }

  if (failure is AuthServerFailure) {
    return AuthStateError.server;
  }

  if (failure is AuthInvalidResponseFailure ||
      failure is AuthInvalidDataFailure) {
    return AuthStateError.server;
  }

  if (failure is AuthStorageFailure) {
    return AuthStateError.unknown;
  }

  // =========================
  // Domain Logic Failures
  // =========================




  if (failure is BaseCollectionDomainFailure) {
    return AuthStateError.notFound;
  }

  if (failure is AuthUserNotFoundFailure) {
    return AuthStateError.notFound;
  }

  if (failure is AuthUnauthorizedFailure) {
    return AuthStateError.unauthorized;
  }

  if (failure is AuthInvalidCredentialsFailure) {
    return AuthStateError.invalidCredentials;
  }

  if (failure is AuthPermissionFailure) {
    return AuthStateError.unauthorized;
  }

  // =========================
  // Entity / Validation Failures
  // =========================

  if (failure is AuthDomainFailure) {
    return AuthStateError.validation;
  }

  // =========================
  // Unknown
  // =========================

  return AuthStateError.unknown;
}
