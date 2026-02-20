import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/send_otp/send_otp_usecase_business_rule.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';

class SendOtpUseCase {
  final AuthRepository repository;

  const SendOtpUseCase({
    required this.repository,
  });

  Future<Result<VerificationEntity, AuthFailure>> call({
    required VerificationEntity verification,
  }) async {
    try {
      final rule = SendOtpUseCaseBusinessRule(
        verification: verification,
      );
      rule.validate();
    } on VerificationEntityException catch (e) {
      return Result.failure(
        AuthValidationFailure(e.message),
      );
    }

    return repository.sendOtp(
      verification: verification,
    );
  }
}
