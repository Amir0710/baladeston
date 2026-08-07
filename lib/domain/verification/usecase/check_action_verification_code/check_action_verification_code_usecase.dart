import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/verification/entity/verification_check/verification_check_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/repository/verification_repository.dart';
import 'package:baladeston/domain/verification/usecase/check_action_verification_code/check_action_verification_code_usecase_business_rule.dart';

class CheckActionVerificationCodeUseCase {
  final VerificationRepository repository;

  const CheckActionVerificationCodeUseCase({
    required this.repository,
  });

  Future<Result<bool, VerificationFailure>> call({
    required VerificationCheckEntity verificationCheck,
  }) async {
    final businessRule = CheckActionVerificationCodeUsecaseBusinessRule(
      verificationCheckEntity: verificationCheck,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) async {
        final result = await repository.checkActionVerificationCode(
          verificationCheck: verificationCheck,
        );
        return result;
      },
      failure: (failure) => Result.failure(failure),
    );
  }
}
