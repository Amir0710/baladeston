import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/domain/onboarding/exception/onboarding_image_exception.dart';
import 'package:baladeston/domain/onboarding/exception/onboarding_user_entity_exception.dart';
import 'package:baladeston/domain/onboarding/failure/onboarding_failure.dart';

OnboardingFailure mapOnboardingException(Object error) {
  if (error is OnboardingUserEntityException) {
    if (error is UserFullNameEmptyException ||
        error is UserGenderRequiredException) {
      return MissingRequiredFieldFailure(error.toString());
    }
    return ValidationFailure(error.toString());
  }

  if (error is OnboardingImageException) {
    if (error is ImageTooLargeException ||
        error is InvalidImageFormatException) {
      return UploadFailure(error.toString());
    }
    return ValidationFailure(error.toString());
  }

  if (error is RemoteValidationException) {
    return ValidationFailure(error.message);
  }

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const ValidationFailure(
      'User is not allowed to complete onboarding',
    );
  }

  if (error is NetworkException || error is TimeoutException) {
    return const NetworkFailure();
  }

  if (error is ServerException) {
    return const UnknownOnboardingFailure(
      'Server error occurred during onboarding',
    );
  }

  return const UnknownOnboardingFailure();
}
