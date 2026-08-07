import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/auth/entity/logout_request/logout_request_entity.dart';
import 'package:baladeston/domain/auth/entity/user_password/user_password_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';

abstract class AuthRepository {
  Future<Result<bool, AuthFailure>> loginWithPassword({
    required UserPasswordEntity loginWithPassword,
  });

  Future<Result<AuthSessionEntity, AuthFailure>> finishOnBoarding({
    required UserEntity user,
    required String onboarding,
  });

  Future<Result<AuthSessionEntity, AuthFailure>> skipOnBoarding({
    required UserEntity user,
    required String onboarding,
  });

  Future<Result<AuthSessionEntity, AuthFailure>> refreshToken({
    required String refreshToken ,
  });

  Future<Result<bool, AuthFailure>> logout(
      {required LogoutRequestEntity logoutRequest});

  Future<Result<bool, AuthFailure>> checkToken();

  Future<Result<bool, AuthFailure>> checkUserExists({
    required String phone,
  });
}
