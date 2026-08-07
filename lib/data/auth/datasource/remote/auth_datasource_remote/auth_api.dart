import 'package:baladeston/data/auth/model/auth_session/auth_session_model.dart';
import 'package:baladeston/data/auth/model/logout_request/logout_request_model.dart';
import 'package:baladeston/data/auth/model/user_password/user_password_model.dart';
import 'package:baladeston/data/user/model/user_model.dart';

abstract class AuthApi {
  Future<bool> loginWithPassword({
    required UserPasswordModel loginWithPassword,
  });

  Future<AuthSessionModel> finishOnBoarding({
    required UserModel user,
    required String onboarding,
  });

  Future<AuthSessionModel> skipOnBoarding({
    required UserModel user,
    required String onboarding,
  });

  Future<bool> logout({required LogoutRequestModel logoutRequest});

  Future<bool> checkToken();

  Future<bool> checkUserExists({
    required String phone,
  });

  Future<AuthSessionModel> refreshToken({
    required String refreshToken,
  });
}
