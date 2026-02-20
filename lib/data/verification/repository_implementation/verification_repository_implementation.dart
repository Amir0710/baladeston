import 'package:baladeston/core/result/result.dart';

import 'package:baladeston/data/auth/mapper/auth_session_mapper.dart';
import 'package:baladeston/data/verification/datasource/remote/verificarion_remote_datasource/verification_api.dart';
import 'package:baladeston/data/verification/mapper/otp_session_mapper.dart';
import 'package:baladeston/data/verification/mapper/verification_mapper.dart';

import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/verification/entity/otp_session/otp_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/failure/verification_failure_mapper.dart';
import 'package:baladeston/domain/verification/repository/verification_repository.dart';

class VerificationRepositoryImplementation
    implements VerificationRepository {
  final VerificationApi api;

  const VerificationRepositoryImplementation({
    required this.api,
  });

  // ------------------------------------------------------
  // Send verification code
  // ------------------------------------------------------

  @override
  Future<Result<OtpSessionEntity, VerificationFailure>>
  sendVerificationCode({
    required VerificationEntity verification,
  }) async {
    try {
      final result = await api.sendVerificationCode(
        verification: verification.toModel(),
      );

      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapVerificationException(error));
    }
  }

  // ------------------------------------------------------
  // Check verification code
  // ------------------------------------------------------

  @override
  Future<Result<AuthSessionEntity, VerificationFailure>>
  checkVerificationCode({
    required VerificationEntity verification,
  }) async {
    try {
      final result = await api.checkVerificationCode(
        verification: verification.toModel(),
      );

      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapVerificationException(error));
    }
  }
}
