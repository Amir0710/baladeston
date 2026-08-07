import 'package:baladeston/domain/auth/failure/auth_failure.dart';

abstract class RefreshFailure extends AuthDomainFailure {
  const RefreshFailure();
}

class RefreshTokenFormatFailure extends RefreshFailure {
  const RefreshTokenFormatFailure();
}

class RefreshTokenExpiredFailure extends RefreshFailure {
  const RefreshTokenExpiredFailure();
}

class RefreshTokenInvalidFailure extends RefreshFailure {
  const RefreshTokenInvalidFailure();
}
