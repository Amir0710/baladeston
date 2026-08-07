import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_check/verification_check_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/repository/verification_repository.dart';
import 'package:baladeston/domain/verification/usecase/check_login_verification_code/check_login_verification_code_usecase_business_rule.dart';

class CheckLoginVerificationCodeUseCase {
  final VerificationRepository repository;

  const CheckLoginVerificationCodeUseCase({
    required this.repository,
  });

  Future<Result<AuthSessionEntity, VerificationFailure>> call({
    required VerificationCheckEntity verificationCheck,
  }) async {
    final businessRule =
    CheckLoginVerificationCodeUsecaseBusinessRule(
      verificationCheckEntity: verificationCheck,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) async {
        return await repository.checkLoginVerificationCode(
          verificationCheck: verificationCheck,
        );
      },
      failure: (failure) => Result.failure(failure),
    );
  }
}
