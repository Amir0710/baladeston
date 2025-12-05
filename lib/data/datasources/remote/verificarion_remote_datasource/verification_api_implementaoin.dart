import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/models/verification/verification_model.dart';
import 'verification_api.dart';

class VerificationApiImplementation implements VerificationApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/verification/$path');

  @override
  Future<VerificationModel> sendVerificationCode(String phone) async {
    final response = await http.post(
      _url('send'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'phone': phone}),
    );

    if (response.statusCode == 200) {
      return VerificationModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    }

    throw Exception('خطا در ارسال کد تأیید: ${response.statusCode}');
  }

  @override
  Future<VerificationModel> resendVerificationCode(String phone) async {
    final response = await http.post(
      _url('resend'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'phone': phone}),
    );

    if (response.statusCode == 200) {
      return VerificationModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    }

    throw Exception('خطا در ارسال مجدد کد تأیید: ${response.statusCode}');
  }

  @override
  Future<String> checkVerificationCode({
    required VerificationModel verification,
  }) async {
    final response = await http.post(
      _url('check'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(verification.toJson()),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data is Map<String, dynamic> && data.containsKey('token')) {
        return data['token'] as String;
      }

      if (data is String) return data;

      throw Exception('فرمت پاسخ سرور نامعتبر است');
    }

    if (response.statusCode == 401 || response.statusCode == 400) {
      throw Exception('کد تأیید اشتباه است');
    }

    throw Exception('خطای سرور: ${response.statusCode}');
  }
}
