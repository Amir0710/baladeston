import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/auth/datasource/remote/auth_datasource_remote/auth_api.dart';
import 'package:baladeston/data/auth/error/auth_exception_mapper.dart';
import 'package:baladeston/data/auth/mapper/auth_session_mapper.dart';
import 'package:baladeston/data/auth/mapper/logout_request_mapper.dart';
import 'package:baladeston/data/auth/mapper/user_password_mapper.dart';
import 'package:baladeston/data/user/mapper/user_mapper.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/auth/entity/logout_request/logout_request_entity.dart';
import 'package:baladeston/domain/auth/entity/user_password/user_password_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';

class AuthRepositoryImplementation extends AuthRepository {
  final AuthApi _api;

  AuthRepositoryImplementation({
    required AuthApi api,
  }) : _api = api;

  // --------------------------------------------------
  // Login
  // --------------------------------------------------

  @override
  Future<Result<bool, AuthFailure>> loginWithPassword({
    required UserPasswordEntity loginWithPassword,
  }) async {
    try {
      final model = loginWithPassword.toModel();

      final result = await _api.loginWithPassword(
        loginWithPassword: model,
      );

      return Result.success(result);
    } catch (error) {
      return Result.failure(mapAuthException(error));
    }
  }

  // --------------------------------------------------
  // OnBoarding
  // --------------------------------------------------

  @override
  Future<Result<AuthSessionEntity, AuthFailure>> finishOnBoarding({
    required UserEntity user,
    required String onboarding,
  }) async {
    try {
      final userModel = user.toModel();

      final resultModel = await _api.finishOnBoarding(
        user: userModel,
        onboarding: onboarding,
      );

      return Result.success(
        resultModel.toEntity(),
      );
    } catch (error) {
      return Result.failure(mapAuthException(error));
    }
  }

  @override
  Future<Result<AuthSessionEntity, AuthFailure>> skipOnBoarding({
    required UserEntity user,
    required String onboarding,
  }) async {
    try {
      final userModel = user.toModel();

      final resultModel = await _api.skipOnBoarding(
        user: userModel,
        onboarding: onboarding,
      );

      return Result.success(
        resultModel.toEntity(),
      );
    } catch (error) {
      return Result.failure(mapAuthException(error));
    }
  }

  // --------------------------------------------------
  // Token
  // --------------------------------------------------

  @override
  Future<Result<AuthSessionEntity, AuthFailure>> refreshToken({
    required String refreshToken,
  }) async {
    try {
      final resultModel = await _api.refreshToken(
        refreshToken: refreshToken,
      );

      return Result.success(
        resultModel.toEntity(),
      );
    } catch (error) {
      return Result.failure(mapAuthException(error));
    }
  }

  @override
  Future<Result<bool, AuthFailure>> checkToken() async {
    try {
      final result = await _api.checkToken();

      return Result.success(result);
    } catch (error) {
      return Result.failure(mapAuthException(error));
    }
  }

  // --------------------------------------------------
  // Logout
  // --------------------------------------------------

  @override
  Future<Result<bool, AuthFailure>> logout({
    required LogoutRequestEntity logoutRequest,
  }) async {
    try {
      final model = logoutRequest.toModel();

      final result = await _api.logout(
        logoutRequest: model,
      );

      return Result.success(result);
    } catch (error) {
      return Result.failure(mapAuthException(error));
    }
  }

  // --------------------------------------------------
  // User
  // --------------------------------------------------

  @override
  Future<Result<bool, AuthFailure>> checkUserExists({
    required String phone,
  }) async {
    try {
      final result = await _api.checkUserExists(
        phone: phone,
      );

      return Result.success(result);
    } catch (error) {
        return Result.failure(mapAuthException(error));
    }
  }
}
