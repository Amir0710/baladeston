import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/finish_onboarding/finish_onboarding_usecase_business_rule.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';

class FinishOnBoardingUseCase {
  final AuthRepository repository;

  const FinishOnBoardingUseCase({
    required this.repository,
  });

  Future<Result<AuthSessionEntity, AuthFailure>> call({
    required UserEntity user,
    required String onboarding,
  }) async {
    final businessRule =
        FinishOnboardingUseCaseBusinessRule(user: user, onboarding: onboarding);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.finishOnBoarding(
        onboarding: onboarding,
        user: user,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
