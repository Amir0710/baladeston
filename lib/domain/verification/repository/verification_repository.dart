import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/verification/entity/otp_session/otp_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';

abstract class VerificationRepository {
  Future<Result<OtpSessionEntity, VerificationFailure>> sendVerificationCode({
    required VerificationEntity verification,
  });

  Future<Result<AuthSessionEntity, VerificationFailure>> checkVerificationCode({
    required VerificationEntity verification,
  });
}
