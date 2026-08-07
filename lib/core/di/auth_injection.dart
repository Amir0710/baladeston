import 'package:baladeston/application/providers/auth_cubit/auth_cubit.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';

// UseCases
import 'package:baladeston/domain/auth/usecase/login_with_password/login_with_password_usecase.dart';
import 'package:baladeston/domain/auth/usecase/finish_onboarding/finish_onboarding_usecase.dart';
import 'package:baladeston/domain/auth/usecase/skip_onboarding/skip_onboarding_usecase.dart';
import 'package:baladeston/domain/auth/usecase/logout/logout_usecase.dart';
import 'package:baladeston/domain/auth/usecase/check_token/check_token_usecase.dart';
import 'package:baladeston/domain/auth/usecase/check_user_exists/check_user_exists_usecase.dart';
import 'package:baladeston/domain/auth/usecase/refresh_token/refresh_token_usecase.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initAuthModule() async {
  getIt

  // --------------------------------------------------
  // 1. UseCases
  // --------------------------------------------------
    ..registerLazySingleton<LoginWithPasswordUseCase>(
          () => LoginWithPasswordUseCase(
        repository: getIt<AuthRepository>(),
      ),
    )
    ..registerLazySingleton<FinishOnBoardingUseCase>(
          () => FinishOnBoardingUseCase(
        repository: getIt<AuthRepository>(),
      ),
    )
    ..registerLazySingleton<SkipOnBoardingUseCase>(
          () => SkipOnBoardingUseCase(
        repository: getIt<AuthRepository>(),
      ),
    )
    ..registerLazySingleton<LogoutUseCase>(
          () => LogoutUseCase(
        repository: getIt<AuthRepository>(),
      ),
    )
    ..registerLazySingleton<CheckTokenUseCase>(
          () => CheckTokenUseCase(
        repository: getIt<AuthRepository>(),
      ),
    )
    ..registerLazySingleton<CheckUserExistsUseCase>(
          () => CheckUserExistsUseCase(
        repository: getIt<AuthRepository>(),
      ),
    )
    ..registerLazySingleton<RefreshTokenUseCase>(
          () => RefreshTokenUseCase(
        repository: getIt<AuthRepository>(),
      ),
    )

  // --------------------------------------------------
  // 2. Cubit
  // --------------------------------------------------
    ..registerFactory<AuthCubit>(
          () => AuthCubit(
        loginWithPasswordUseCase: getIt<LoginWithPasswordUseCase>(),
        finishOnBoardingUseCase: getIt<FinishOnBoardingUseCase>(),
        skipOnBoardingUseCase: getIt<SkipOnBoardingUseCase>(),
        logoutUseCase: getIt<LogoutUseCase>(),
        checkTokenUseCase: getIt<CheckTokenUseCase>(),
        checkUserExistsUseCase: getIt<CheckUserExistsUseCase>(),
        refreshTokenUseCase: getIt<RefreshTokenUseCase>(),
      ),
    );
}
