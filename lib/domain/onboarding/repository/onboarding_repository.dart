import 'dart:io' show File;
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/onboarding/failure/onboarding_failure.dart';

abstract class OnboardingRepository {
  // Future<Result<AuthSessionEntity, OnboardingFailure>> completeOnboarding({
  //   required UserEntity user,
  // });

  Future<Result<String, OnboardingFailure>> uploadImage({
    required File image,
  });
}
