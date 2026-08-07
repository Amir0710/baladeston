import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/auth/model/auth_session/auth_session_model.dart';
import 'package:baladeston/data/auth/model/logout_request/logout_request_model.dart';
import 'package:baladeston/data/auth/model/user_password/user_password_model.dart';
import 'package:baladeston/data/user/model/user_model.dart';
import 'package:http/http.dart' as http;

import 'auth_api.dart';

class AuthApiImplementation implements AuthApi {
  final http.Client _client;

  AuthApiImplementation(this._client);

  Uri _url(String path) => Uri.parse('${AppConfig.apiBaseUrl}$path');

  @override
  Future<bool> checkToken() {
    // TODO: implement checkToken
    throw UnimplementedError();
  }

  @override
  Future<bool> checkUserExists({required String phone}) {
    // TODO: implement checkUserExists
    throw UnimplementedError();
  }

  @override
  Future<AuthSessionModel> finishOnBoarding(
      {required UserModel user, required String onboarding}) {
    // TODO: implement finishOnBoarding
    throw UnimplementedError();
  }

  @override
  Future<bool> loginWithPassword(
      {required UserPasswordModel loginWithPassword}) {
    // TODO: implement loginWithPassword
    throw UnimplementedError();
  }

  @override
  Future<bool> logout({required LogoutRequestModel logoutRequest}) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<AuthSessionModel> refreshToken({required String refreshToken}) {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<AuthSessionModel> skipOnBoarding(
      {required UserModel user, required String onboarding}) {
    // TODO: implement skipOnBoarding
    throw UnimplementedError();
  }
}
