import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/onboarding/exception/onboarding_user_entity_exception.dart';
import 'package:baladeston/domain/onboarding/failure/onboarding_failure.dart';
import 'package:baladeston/domain/onboarding/repository/onboarding_repository.dart';
import 'package:baladeston/domain/onboarding/usecase/complete_onboarding/complete_onboarding_usecase_business_rule.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';

class CompleteOnboardingUseCase {
  final OnboardingRepository repository;

  const CompleteOnboardingUseCase(this.repository);

  Future<Result<AuthSessionEntity, OnboardingFailure>> call({
    required UserEntity user,
  }) async {
    try {
      final business = CompleteOnboardingUsecaseBusinessRule(user: user);

      business.validate();
    } on OnboardingUserEntityException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.completeOnboarding(user: user);
  }
}
