import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/auth/datasource/remote/auth_datasource_remote/auth_api.dart';
import 'package:baladeston/data/verification/mapper/verification_mapper.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/value_object/login_credentials.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';

class AuthRepositoryImplementation implements AuthRepository {
  final AuthApi _api;

  AuthRepositoryImplementation({required AuthApi api}) : _api = api;

  // --------------------------------------------------
  // Login With Password
  // --------------------------------------------------
  @override
  Future<Result<bool, AuthFailure>> loginWithPassword({
    required LoginWithPasswordAttribute attribute,
  }) async {
    try {
      final result = await _api.loginWithPassword(attribute: attribute);
      return Result.success(result);
    } on SocketException {
      return Result.failure(
        NetworkFailure(),
      );
    }
  }

  // --------------------------------------------------
  // Check Token
  // --------------------------------------------------
  @override
  Future<Result<bool, AuthFailure>> checkToken() async {
    try {
      final result = await _api.checkToken();
      return Result.success(result);
    } on SocketException {
      return Result.failure(
        NetworkFailure(),
      );
    }
  }

  // --------------------------------------------------
  // Send OTP
  // --------------------------------------------------
  @override
  Future<Result<VerificationEntity, AuthFailure>> sendOtp({
    required VerificationEntity verification,
  }) async {
    try {
      final model = verification.toModel();
      final resultModel = await _api.sendOtp(verification: model);
      final entity = resultModel.toEntity();

      return Result.success(entity);
    } on SocketException {
      return Result.failure(
        NetworkFailure(),
      );
    } catch (e) {
      return Result.failure(
        UnknownFailure(),
      );
    }
  }

  // --------------------------------------------------
  // Check User Exists
  // --------------------------------------------------
  @override
  Future<Result<bool, AuthFailure>> checkUserExists({
    required String phone,
  }) async {
    try {
      final exists = await _api.checkUserExists(phoneNumber: phone);

      return Result.success(exists);
    } on SocketException {
      return Result.failure(
        NetworkFailure(),
      );
    } catch (e) {
      return Result.failure(
        UnknownFailure(),
      );
    }
  }

}
