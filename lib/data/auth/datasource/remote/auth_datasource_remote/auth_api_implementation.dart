import 'dart:convert';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/verification/model/verification/verification_model.dart';
import 'package:baladeston/domain/auth/value_object/login_credentials.dart';
import 'package:http/http.dart' as http;

import 'auth_api.dart';

class AuthApiImplementation implements AuthApi {
  final http.Client _client;

  AuthApiImplementation(this._client);

  Uri _url(String path) =>
      Uri.parse('${AppConfig.apiBaseUrl}$path');

  // ---------------------------------------------------------------------------
  // Login with password
  // POST /auth/login
  // ---------------------------------------------------------------------------
  @override
  Future<bool> loginWithPassword({
    required LoginWithPasswordAttribute attribute,
  }) async {
    final response = await _client.post(
      _url('/auth/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': attribute.identifier,
        'password': attribute.password,
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return true ;
    }

    throw Exception(
      'Login failed with status: ${response.statusCode}',
    );
  }



  @override
  Future<bool> checkToken() {
    // TODO: implement checkToken
    throw UnimplementedError();
  }


  @override
  Future<VerificationModel> sendOtp({required VerificationModel verification}) {
    // TODO: implement sendOtp
    throw UnimplementedError();
  }

  @override
  Future<bool> checkUserExists({required String phoneNumber}) {
    // TODO: implement checkUserExists
    throw UnimplementedError();
  }
}
