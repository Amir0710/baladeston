import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/verification/entity/verification_request/verification_request_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_response/verification_response_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/repository/verification_repository.dart';
import 'package:baladeston/domain/verification/usecase/send_verification_request/send_verification_request_usecase_business_rule.dart';

class SendVerificationRequestUseCase {
  final VerificationRepository repository;

  const SendVerificationRequestUseCase({
    required this.repository,
  });

  Future<Result<VerificationResponseEntity, VerificationFailure>> call({
    required VerificationRequestEntity verificationRequest,
  }) async {
    final businessRule = SendVerificationRequestUsecaseBusinessRule(
      verificationRequest: verificationRequest,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) async {
        return await repository.requestVerificationCode(
          verificationRequest: verificationRequest,
        );
      },
      failure: (failure) => Result.failure(failure),
    );
  }
}
