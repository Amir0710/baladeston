import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/onboarding/exception/onboarding_image_exception.dart';
import 'package:baladeston/domain/onboarding/failure/onboarding_failure.dart';
import 'package:baladeston/domain/onboarding/repository/onboarding_repository.dart';
import 'package:baladeston/domain/onboarding/usecase/add_image/add_image_onboarding_usecase_business_rule.dart';

class AddImageOnboardingUseCase {
  final OnboardingRepository repository;

  const AddImageOnboardingUseCase({
    required this.repository,
  });

  Future<Result<String, OnboardingFailure>> call({
    required int id,
    required File image,
  }) async {
    try {
      final business = AddImageOnboardingUsecaseBusiness(image: image);
      business.validate();
    } on OnboardingImageException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.uploadImage(image: image);
  }
}

