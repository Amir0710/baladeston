import 'package:baladeston/domain/auth/failure/auth_failure.dart';

abstract class OnboardingFailure extends AuthDomainFailure {
  const OnboardingFailure();
}

class OnboardingTokenFormatFailure extends OnboardingFailure {
  const OnboardingTokenFormatFailure();
}

class OnboardingTokenExpiredFailure extends OnboardingFailure {
  const OnboardingTokenExpiredFailure();
}

class OnboardingTokenInvalidFailure extends OnboardingFailure {
  const OnboardingTokenInvalidFailure();
}
