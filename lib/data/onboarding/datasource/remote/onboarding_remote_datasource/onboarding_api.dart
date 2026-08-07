import 'dart:io';

import 'package:baladeston/data/auth/model/auth_session/auth_session_model.dart';
import 'package:baladeston/data/user/model/user_model.dart';

abstract class OnboardingApi {
  Future<AuthSessionModel> completeOnboarding({
    required UserModel user,
  });

  Future<String> uploadImage({
    required File image,
  });
}
