import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/repository/verification_repository.dart';
import 'package:baladeston/domain/verification/usecase/check_verification/check_varification_usecase_business_rule.dart';

class CheckVerificationUseCase {
  final VerificationRepository repository;

  const CheckVerificationUseCase(this.repository);

  Future<Result<AuthSessionEntity, VerificationFailure>> call({
    required VerificationEntity verification,
  }) async {
    try {
      final business =
          CheckVerificationUseCaseBusinessRule(verification: verification);
      business.validate();
    } on VerificationEntityException catch (e) {
      return Result.failure(ValidationFailure(e.message));
    }

    return await repository.checkVerificationCode(verification: verification);
  }
}
