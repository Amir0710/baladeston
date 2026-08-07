import 'dart:io';

/* ------------------------------ USE CASES ------------------------------ */
import 'package:baladeston/domain/onboarding/usecase/complete_onboarding/complete_onboarding_usecase.dart';
import 'package:baladeston/domain/onboarding/usecase/upload_image/upload_image_onboarding_usecase.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:bloc/bloc.dart';

import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final CompleteOnboardingUseCase completeOnboardingUseCase;
  final UploadImageOnboardingUseCase uploadImageUseCase;

  OnboardingCubit({
    required this.completeOnboardingUseCase,
    required this.uploadImageUseCase,
  }) : super(const OnboardingState.initial());

  /* ---------------------------------------------------------------------- */
  /*                               UPLOAD IMAGE                              */
  /* ---------------------------------------------------------------------- */

  Future<void> uploadImage({
    required File image,
  }) async {
    emit(const OnboardingState.uploadingImage());

    final result = await uploadImageUseCase(image: image);

    result.when(
      success: (imageUrl) {
        emit(OnboardingState.imageUploaded(imageUrl: imageUrl));
      },
      failure: (_) {
        emit(const OnboardingState.error(
          error: OnboardingStateError.errorWhileUploadingImage,
          message: 'خطا در آپلود تصویر',
        ));
      },
    );
  }

  /* ---------------------------------------------------------------------- */
  /*                          COMPLETE ONBOARDING                            */
  /* ---------------------------------------------------------------------- */

  Future<void> completeOnboarding({
    required UserEntity user,
  }) async {
    emit(const OnboardingState.completing());

    final result = await completeOnboardingUseCase(user: user);

    result.when(
      success: (session) {
        emit(OnboardingState.completed(session: session));
      },
      failure: (_) {
        emit(const OnboardingState.error(
          error: OnboardingStateError.errorWhileCompletingOnboarding,
          message: 'خطا در تکمیل فرآیند ثبت‌نام',
        ));
      },
    );
  }
}
