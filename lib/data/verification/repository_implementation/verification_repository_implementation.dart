import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/auth/mapper/auth_session_mapper.dart';
import 'package:baladeston/data/verification/datasource/remote/verification_remote_datasource/verification_api.dart';
import 'package:baladeston/data/verification/error/verification_exception_mapper.dart';
import 'package:baladeston/data/verification/mapper/verification_check_mapper.dart';
import 'package:baladeston/data/verification/mapper/verification_request_mapper.dart';
import 'package:baladeston/data/verification/mapper/verification_response_mapper.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_check/verification_check_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_request/verification_request_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_response/verification_response_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/repository/verification_repository.dart';

class VerificationRepositoryImplementation implements VerificationRepository {
  final VerificationApi _api;

  VerificationRepositoryImplementation({
    required VerificationApi api,
  }) : _api = api;

  @override
  Future<Result<VerificationResponseEntity, VerificationFailure>>
      requestVerificationCode({
    required VerificationRequestEntity verificationRequest,
  }) async {
    try {
      final model = verificationRequest.toModel();

      final responseModel = await _api.requestVerificationCode(
        verificationRequest: model,
      );

      return Result.success(
        responseModel.toEntity(),
      );
    } catch (error) {
      return Result.failure(
        mapVerificationException(error),
      );
    }
  }

  @override
  Future<Result<AuthSessionEntity, VerificationFailure>>
      checkLoginVerificationCode({
    required VerificationCheckEntity verificationCheck,
  }) async {
    try {
      final model = verificationCheck.toModel();

      final sessionModel = await _api.checkLoginVerificationCode(
        verificationCheck: model,
      );

      return Result.success(
        sessionModel.toEntity(),
      );
    } catch (error) {
      return Result.failure(
        mapVerificationException(error),
      );
    }
  }

  @override
  Future<Result<bool, VerificationFailure>> checkActionVerificationCode({
    required VerificationCheckEntity verificationCheck,
  }) async {
    try {
      final model = verificationCheck.toModel();

      final result = await _api.checkActionVerificationCode(
        verificationCheck: model,
      );

      return Result.success(result);
    } catch (error) {
      return Result.failure(
        mapVerificationException(error),
      );
    }
  }
}
