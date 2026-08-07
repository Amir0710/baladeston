import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';

part 'onboarding_state.freezed.dart';

enum OnboardingStateError {
  errorWhileUploadingImage,
  errorWhileCompletingOnboarding,
}

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;

  /* ----------------------------- Upload Image ----------------------------- */
  const factory OnboardingState.uploadingImage() = _UploadingImage;
  const factory OnboardingState.imageUploaded({
    required String imageUrl,
  }) = _ImageUploaded;

  /* -------------------------- Complete Onboarding -------------------------- */
  const factory OnboardingState.completing() = _Completing;
  const factory OnboardingState.completed({
    required AuthSessionEntity session,
  }) = _Completed;

  /* --------------------------------- Error -------------------------------- */
  const factory OnboardingState.error({
    required OnboardingStateError error,
    required String message,
  }) = _Error;
}
