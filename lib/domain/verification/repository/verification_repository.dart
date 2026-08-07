import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_check/verification_check_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_request/verification_request_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_response/verification_response_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';

abstract class VerificationRepository {
  Future<Result<VerificationResponseEntity, VerificationFailure>>
      requestVerificationCode({
    required VerificationRequestEntity verificationRequest,
  });

  Future<Result<AuthSessionEntity, VerificationFailure>>
      checkLoginVerificationCode({
    required VerificationCheckEntity verificationCheck,
  });

  Future<Result<bool, VerificationFailure>> checkActionVerificationCode({
    required VerificationCheckEntity verificationCheck,
  });
}
