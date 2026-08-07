import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/verification/entity/verification_request/verification_request_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/failure/verification_request_entity_failure.dart';

class SendVerificationRequestUsecaseBusinessRule {
  final VerificationRequestEntity verificationRequest;

  const SendVerificationRequestUsecaseBusinessRule({
    required this.verificationRequest,
  });

  Result<void, VerificationFailure> validate() {
    return verificationRequestEntityValidation();
  }

  Result<void, VerificationFailure> verificationRequestEntityValidation() {
    if (verificationRequest.phone.isEmpty) {
      return const Result.failure(
        VerificationRequestPhoneEmptyFailure(),
      );
    }

    final phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');

    if (!phoneRegex.hasMatch(verificationRequest.phone)) {
      return const Result.failure(
        VerificationRequestPhoneInvalidFailure(),
      );
    }

    if (verificationRequest.targetId == 0) {
      return const Result.failure(
        VerificationRequestTargetIdRequiredFailure(),
      );
    }
    return const Result.success(null);
  }
}
