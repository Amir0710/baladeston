import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/data/auth/model/auth_session_model.dart';
import 'package:baladeston/data/verification/datasource/remote/verificarion_remote_datasource/verification_api.dart';
import 'package:baladeston/data/verification/model/otp_session/otp_session_model.dart';
import 'package:baladeston/data/verification/model/verification/verification_model.dart';
import 'package:baladeston/data/verification/token_manager/token_manager.dart';

class VerificationApiImplementation implements VerificationApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/verification/$path');

  Never _handleHttpError(http.Response response) {
    switch (response.statusCode) {
      case 400:
      case 422:
        throw const RemoteValidationException('Invalid verification data');
      case 401:
        throw const UnauthorizedException();
      case 403:
        throw const ForbiddenException();
      case 404:
        throw const NotFoundException();
      case 500:
      default:
        throw const ServerException();
    }
  }

  @override
  Future<OtpSessionModel> sendVerificationCode({
    required VerificationModel verification,
  }) async {
    try {
      final response = await http.post(
        _url('send'),
        headers: const {'Content-Type': 'application/json'},
        body: json.encode({
          'phone': verification.phone,
          'purpose': verification.purpose,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return OtpSessionModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>,
        );
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  @override
  Future<AuthSessionModel> checkVerificationCode({
    required VerificationModel verification,
  }) async {
    try {
      final response = await http.post(
        _url('check'),
        headers: const {'Content-Type': 'application/json'},
        body: json.encode(verification.toJson()),
      );

      if (response.statusCode == 200) {
        final data =
        json.decode(response.body) as Map<String, dynamic>;

        final authSession = AuthSessionModel.fromJson(data);

        // ✅ Side-effect مجاز در Data layer
        TokenService.saveTokens(
          authSession.accessToken,
          authSession.refreshToken,
        );

        return authSession;
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }
}
