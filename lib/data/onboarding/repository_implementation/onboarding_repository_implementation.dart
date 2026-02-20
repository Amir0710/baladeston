import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/auth/mapper/auth_session_mapper.dart';
import 'package:baladeston/data/onboarding/datasource/remote/onboarding_remote_datasource/onboarding_api.dart';
import 'package:baladeston/data/user/mapper/user_mapper.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/onboarding/failure/onboarding_failure.dart';
import 'package:baladeston/domain/onboarding/failure/onboarding_failure_mapper.dart';
import 'package:baladeston/domain/onboarding/repository/onboarding_repository.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';

class OnboardingRepositoryImplementation implements OnboardingRepository {
  final OnboardingApi api;

  const OnboardingRepositoryImplementation(this.api);

  @override
  Future<Result<AuthSessionEntity, OnboardingFailure>>
  completeOnboarding({
    required UserEntity user,
  }) async {
    try {
      final result = await api.completeOnboarding(
        user: user.toModel(),
      );

      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapOnboardingException(error));
    }
  }

  @override
  Future<Result<String, OnboardingFailure>> uploadImage({
    required File image,
  }) async {
    try {
      final result = await api.uploadImage(image: image);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapOnboardingException(error));
    }
  }
}
