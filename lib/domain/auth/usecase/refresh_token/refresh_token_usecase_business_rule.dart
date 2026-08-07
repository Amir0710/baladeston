import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/failure/refresh_token_failure.dart';

class RefreshTokenUseCaseBusinessRule {
  final String refreshToken;

  const RefreshTokenUseCaseBusinessRule({
    required this.refreshToken,
  });

  Result<void, AuthFailure> validate() {
    return refreshTokenValidation();
  }

  Result<void, AuthFailure> refreshTokenValidation() {
    if (refreshToken.trim().isEmpty) {
      return const Result.failure(RefreshTokenInvalidFailure());
    }

    if (refreshToken.length < 10) {
      return const Result.failure(RefreshTokenFormatFailure());
    }

    return const Result.success(null);
  }
}
