abstract class OnboardingFailure {
  final String message;

  const OnboardingFailure({required this.message});
}

class ValidationFailure extends OnboardingFailure {
  const ValidationFailure([String? massage])
      : super(message: massage ?? 'User data invalid for onboarding');
}

class MissingRequiredFieldFailure extends OnboardingFailure {
  const MissingRequiredFieldFailure([String? massage])
      : super(message: massage ?? 'Some required user fields are missing');
}

class NetworkFailure extends OnboardingFailure {
  const NetworkFailure([String? massage])
      : super(message: massage ?? 'Network connection error');
}

class StorageFailure extends OnboardingFailure {
  const StorageFailure([String? massage])
      : super(message: massage ?? 'Failed to save data to local storage');
}

class UploadFailure extends OnboardingFailure {
  const UploadFailure([String? massage])
      : super(message: massage ?? 'Could not upload image');
}

class UnknownOnboardingFailure extends OnboardingFailure {
  const UnknownOnboardingFailure([String? massage])
      : super(message: massage ?? 'Unknown onboarding error occurred');
}
