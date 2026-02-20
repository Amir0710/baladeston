import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/verification/entity/otp_session/otp_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/repository/verification_repository.dart';
import 'package:baladeston/domain/verification/usecase/send_verification/send_varificarion_usecase_business_rule.dart';

class SendVerificationUseCase {
  final VerificationRepository repository;

  const SendVerificationUseCase(this.repository);

  Future<Result<OtpSessionEntity, VerificationFailure>> call({
    required VerificationEntity verification,
  }) async {
    try {
      final business =
      SendVerificationUseCaseBusinessRule(verification: verification);
      business.validate();
    } on VerificationEntityException catch (e) {
      return Result.failure(ValidationFailure(e.message));
    }

    return repository.sendVerificationCode(
      verification: verification,
    );
  }
}
