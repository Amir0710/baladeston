import 'package:baladeston/domain/auth/failure/auth_failure.dart';

abstract class LogoutRequestEntityFailure extends AuthDomainFailure {
  const LogoutRequestEntityFailure();
}

class LogoutRequestEntityDeviceIdEmptyFailure
    extends LogoutRequestEntityFailure {
  const LogoutRequestEntityDeviceIdEmptyFailure();
}

class LogoutRequestEntityDeviceIdFormatInvalidFailure
    extends LogoutRequestEntityFailure {
  const LogoutRequestEntityDeviceIdFormatInvalidFailure();
}

class LogoutRequestEntityRefreshTokenEmptyFailure
    extends LogoutRequestEntityFailure {
  const LogoutRequestEntityRefreshTokenEmptyFailure();
}

class LogoutRequestEntityRefreshTokenInvalidFailure
    extends LogoutRequestEntityFailure {
  const LogoutRequestEntityRefreshTokenInvalidFailure();
}
