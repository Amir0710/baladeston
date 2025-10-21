import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:baladeston/data/models/verification/verification_model.dart';
import 'verification_api.dart';

class VerificationApiImplementation implements VerificationApi {
  final SupabaseClient _client;

  VerificationApiImplementation({required SupabaseClient client}) : _client = client;

  @override
  Future<VerificationModel> sendVerificationCode(String phone) async {
    try {
      final response =
      await _client.functions.invoke('send_verification_code', body: {
        'phone': phone,
      });
      final data = response.data as Map<String, dynamic>;

      return VerificationModel.fromJson(data);
    } catch (e) {
      throw Exception('خطا در ارسال کد تأیید: $e');
    }
  }

  @override
  Future<VerificationModel> checkVerificationCode(
      String phone, String code) async {
    try {
      final response =
      await _client.functions.invoke('check_verification_code', body: {
        'phone': phone,
        'code': code,
      });

      final data = response.data as Map<String, dynamic>;

      return VerificationModel.fromJson(data);
    } catch (e) {
      throw Exception('خطا در بررسی کد تأیید: $e');
    }
  }
}
