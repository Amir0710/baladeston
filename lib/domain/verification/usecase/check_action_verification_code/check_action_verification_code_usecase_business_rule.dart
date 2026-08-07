import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/verification/entity/verification_check/verification_check_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_check_entity_failure.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';

class CheckActionVerificationCodeUsecaseBusinessRule {
  final VerificationCheckEntity verificationCheckEntity;

  const CheckActionVerificationCodeUsecaseBusinessRule({
    required this.verificationCheckEntity,
  });

  Result<void, VerificationFailure> validate() {
    return verificationCheckEntityValidation() ;
  }

  Result<void, VerificationFailure> verificationCheckEntityValidation() {
    if (verificationCheckEntity.phone.isEmpty) {
      return const Result.failure(VerificationCheckPhoneEmptyFailure());
    }
    if (!RegExp(r'^\+?[1-9]\d{1,14}$')
        .hasMatch(verificationCheckEntity.phone)) {
      return const Result.failure(VerificationCheckPhoneInvalidFailure());
    }

    if (verificationCheckEntity.otpCode.toString().isEmpty) {
      return const Result.failure(VerificationCheckOtpCodeEmptyFailure());
    }
    final otpString = verificationCheckEntity.otpCode.toString();
    if (otpString.length < 4 || otpString.length > 6) {
      return const Result.failure(VerificationCheckOtpCodeInvalidFailure());
    }

    if (verificationCheckEntity.purpose == null) {
      return const Result.failure(VerificationCheckPurposeRequiredFailure());
    }

    return const Result.success(null);
  }


}
