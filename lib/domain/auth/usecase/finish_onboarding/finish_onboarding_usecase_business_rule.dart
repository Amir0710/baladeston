import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/failure/onboarding_token_failure.dart';
import 'package:baladeston/domain/auth/failure/user_entity_failure.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';

class FinishOnboardingUseCaseBusinessRule {
  final UserEntity user;
  final String onboarding;

  const FinishOnboardingUseCaseBusinessRule({
    required this.user,
    required this.onboarding,
  });

  Result<void, AuthFailure> validate() {
    late Result<void, AuthFailure> result;

    onboardingValidation().when(
      success: (_) {
        result = userEntityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, AuthFailure> onboardingValidation() {
    if (onboarding.trim().isEmpty) {
      return const Result.failure(OnboardingTokenInvalidFailure());
    }

    if (onboarding.length < 10) {
      return const Result.failure(OnboardingTokenFormatFailure());
    }

    return const Result.success(null);
  }

  Result<void, AuthFailure> userEntityValidation() {
    if (user.fullName!.isEmpty) {
      return const Result.failure(UserEntityNameEmptyFailure());
    }

    if (user.phoneNumber == null || user.phoneNumber!.trim().isEmpty) {
      return const Result.failure(UserEntityPhoneRequiredFailure());
    }

    final phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');

    if (!phoneRegex.hasMatch(user.phoneNumber!)) {
      return const Result.failure(UserEntityPhoneInvalidFailure());
    }

    if (user.email != null && user.email!.isNotEmpty) {
      final emailRegex = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$');

      if (!emailRegex.hasMatch(user.email!)) {
        return const Result.failure(UserEntityEmailInvalidFailure());
      }
    }

    return const Result.success(null);
  }
}
