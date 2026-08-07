import 'package:baladeston/application/providers/verification_cubit/verification_cubit.dart';
// -----------------------------------------------------------------------------
// API (Remote DataSource)
// -----------------------------------------------------------------------------

import 'package:baladeston/data/verification/datasource/remote/verification_remote_datasource/verification_api.dart';
import 'package:baladeston/data/verification/datasource/remote/verification_remote_datasource/verification_api_implementation.dart';
import 'package:baladeston/data/verification/repository_implementation/verification_repository_implementation.dart';
// -----------------------------------------------------------------------------
// Repository
// -----------------------------------------------------------------------------
import 'package:baladeston/domain/verification/repository/verification_repository.dart';
// -----------------------------------------------------------------------------
// UseCases
// -----------------------------------------------------------------------------
import 'package:baladeston/domain/verification/usecase/check_action_verification_code/check_action_verification_code_usecase.dart';
import 'package:baladeston/domain/verification/usecase/check_login_verification_code/check_login_verification_code_usecase.dart';
import 'package:baladeston/domain/verification/usecase/send_verification_request/send_verification_request_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initVerificationModule() async {
  getIt

    // --------------------------------------------------
    // 1. API (Remote DataSource)
    // --------------------------------------------------
    ..registerLazySingleton<VerificationApi>(
      () => VerificationApiImplementation(),
    )

    // --------------------------------------------------
    // 2. Repository
    // --------------------------------------------------
    ..registerLazySingleton<VerificationRepository>(
      () => VerificationRepositoryImplementation(
        api: getIt<VerificationApi>(),
      ),
    )

    // --------------------------------------------------
    // 3. UseCases
    // --------------------------------------------------
    ..registerLazySingleton<CheckActionVerificationCodeUseCase>(
      () => CheckActionVerificationCodeUseCase(
        repository: getIt<VerificationRepository>(),
      ),
    )
    ..registerLazySingleton<CheckLoginVerificationCodeUseCase>(
      () => CheckLoginVerificationCodeUseCase(
        repository: getIt<VerificationRepository>(),
      ),
    )
    ..registerLazySingleton<SendVerificationRequestUseCase>(
      () => SendVerificationRequestUseCase(
        repository: getIt<VerificationRepository>(),
      ),
    )

    // --------------------------------------------------
    // 4. Cubit
    // --------------------------------------------------
    ..registerFactory<VerificationCubit>(
      () => VerificationCubit(
        checkActionVerificationCodeUseCase:
            getIt<CheckActionVerificationCodeUseCase>(),
        checkLoginVerificationCodeUseCase:
            getIt<CheckLoginVerificationCodeUseCase>(),
        sendVerificationRequestUseCase: getIt<SendVerificationRequestUseCase>(),
      ),
    );
}
