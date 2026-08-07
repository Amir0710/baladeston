import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/logout_request/logout_request_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';

import '../../failure/logout_request_failure.dart';

class LogoutUseCaseBusinessRule {
  final LogoutRequestEntity logoutRequest;

  const LogoutUseCaseBusinessRule({
    required this.logoutRequest,
  });

  Result<void, AuthFailure> validate() {
    return logoutRequestEntityValidation();
  }

  Result<void, AuthFailure> logoutRequestEntityValidation() {
    if (logoutRequest.deviceId.trim().isEmpty) {
      return const Result.failure(
        LogoutRequestEntityDeviceIdEmptyFailure(),
      );
    }

    if (!_isValidDeviceId(logoutRequest.deviceId)) {
      return const Result.failure(
        LogoutRequestEntityDeviceIdFormatInvalidFailure(),
      );
    }

    if (logoutRequest.refreshToken.trim().isEmpty) {
      return const Result.failure(
        LogoutRequestEntityRefreshTokenEmptyFailure(),
      );
    }

    if (logoutRequest.refreshToken.length < 10) {
      return const Result.failure(
        LogoutRequestEntityRefreshTokenInvalidFailure(),
      );
    }

    return const Result.success(null);
  }

  bool _isValidDeviceId(String deviceId) {
    final deviceRegex = RegExp(r'^[a-zA-Z0-9\-_]{8,64}$');
    return deviceRegex.hasMatch(deviceId);
  }
}
