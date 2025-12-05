import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/datasources/remote/auth_remote_datasource/auth_api.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthApiImplementation extends AuthApi {
  final _storage = const FlutterSecureStorage();
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri get _url => Uri.parse('$_baseUrl/auth/check-token');

  @override
  Future<bool> checkToken() async {
    final token = await _storage.read(key: 'token');

    if (token == null || token.isEmpty) {
      return false;
    }

    final response = await http.get(
      _url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return true;
    }

    if (response.statusCode == 401) {
      return false;
    }

    throw Exception('خطا در اعتبارسنجی توکن: ${response.statusCode}');
  }
}
