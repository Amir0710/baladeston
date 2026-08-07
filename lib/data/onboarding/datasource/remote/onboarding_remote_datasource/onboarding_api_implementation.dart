import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/auth/model/auth_session/auth_session_model.dart';
import 'package:baladeston/data/onboarding/datasource/remote/onboarding_remote_datasource/onboarding_api.dart';
import 'package:baladeston/data/user/model/user_model.dart';

class OnboardingApiImplementation implements OnboardingApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  @override
  Future<AuthSessionModel> completeOnboarding({
    required UserModel user,
  }) {
    // POST $_baseUrl/onboarding/complete
    throw UnimplementedError();
  }

  @override
  Future<String> uploadImage({
    required File image,
  }) {
    // POST $_baseUrl/onboarding/upload-image
    throw UnimplementedError();
  }
}
