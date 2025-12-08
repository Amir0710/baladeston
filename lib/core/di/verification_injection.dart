import 'package:baladeston/domain/usecase/verification/resend_verification_usecase.dart';
import 'package:baladeston/presentation/providers/verification_cubit/verification_cubit.dart';
import 'package:get_it/get_it.dart';

// API
import 'package:baladeston/data/datasources/remote/verificarion_remote_datasource/verification_api.dart';
import 'package:baladeston/data/datasources/remote/verificarion_remote_datasource/verification_api_implementaoin.dart';

// Repository
import 'package:baladeston/domain/repositories/verification_repository.dart';
import 'package:baladeston/data/repository_implementation/verification_repository_implementation.dart';

// UseCases
import 'package:baladeston/domain/usecase/verification/send_verification_usecase.dart';
import 'package:baladeston/domain/usecase/verification/check_verification_usecase.dart';

// Cubit

final getIt = GetIt.instance;

Future<void> initVerificationModule() async {
  getIt
  // API (REST)
    ..registerLazySingleton<VerificationApi>(
          () => VerificationApiImplementation(),
    )

  // Repository
    ..registerLazySingleton<VerificationRepository>(
          () => VerificationRepositoryImplementation(api: getIt<VerificationApi>()),
    )

  // UseCases
    ..registerLazySingleton<SendVerificationUseCase>(
          () => SendVerificationUseCase(getIt<VerificationRepository>()),
    )
    ..registerLazySingleton<ResendVerificationUseCase>(
          () => ResendVerificationUseCase(getIt<VerificationRepository>()),
    )
    ..registerLazySingleton<CheckVerificationUseCase>(
          () => CheckVerificationUseCase(getIt<VerificationRepository>()),
    )

  // Cubit
    ..registerFactory<VerificationCubit>(
          () => VerificationCubit(
        sendVerificationUseCase: getIt<SendVerificationUseCase>(),
        checkVerificationUseCase: getIt<CheckVerificationUseCase>(),
            resendVerificationUseCase: getIt<ResendVerificationUseCase>(),
      ),
    );
}
