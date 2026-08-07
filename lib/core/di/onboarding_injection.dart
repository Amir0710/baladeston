// Presentation Layer
import 'package:baladeston/application/providers/onboarding_cubit/onboarding_cubit.dart';

// Data Layer
import 'package:baladeston/data/onboarding/datasource/remote/onboarding_remote_datasource/onboarding_api.dart';
import 'package:baladeston/data/onboarding/repository_implementation/onboarding_repository_implementation.dart';

// Domain Layer
import 'package:baladeston/domain/onboarding/repository/onboarding_repository.dart';
import 'package:baladeston/domain/onboarding/usecase/complete_onboarding/complete_onboarding_usecase.dart';
import 'package:baladeston/domain/onboarding/usecase/upload_image/upload_image_onboarding_usecase.dart';

// DI
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initOnboardingModule() async {
  getIt
  /* ---------------------------------------------------------------------- */
  /*                               Repository                               */
  /* ---------------------------------------------------------------------- */
    ..registerLazySingleton<OnboardingRepository>(
          () => OnboardingRepositoryImplementation(
        api: getIt<OnboardingApi>(),
      ),
    )

  /* ---------------------------------------------------------------------- */
  /*                                 UseCases                               */
  /* ---------------------------------------------------------------------- */
    ..registerLazySingleton<CompleteOnboardingUseCase>(
          () => CompleteOnboardingUseCase(
        repository: getIt<OnboardingRepository>(),
      ),
    )
    ..registerLazySingleton<UploadImageOnboardingUseCase>(
          () => UploadImageOnboardingUseCase(
        repository: getIt<OnboardingRepository>(),
      ),
    )

  /* ---------------------------------------------------------------------- */
  /*                                   Cubit                                */
  /* ---------------------------------------------------------------------- */
    ..registerFactory<OnboardingCubit>(
          () => OnboardingCubit(
        completeOnboardingUseCase: getIt<CompleteOnboardingUseCase>(),
        uploadImageUseCase: getIt<UploadImageOnboardingUseCase>(),
      ),
    );
}
