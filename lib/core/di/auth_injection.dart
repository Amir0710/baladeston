import 'package:baladeston/application/providers/auth_cubit/auth_cubit.dart';
import 'package:baladeston/data/auth/datasource/remote/auth_datasource_remote/auth_api.dart';
import 'package:baladeston/data/auth/datasource/remote/auth_datasource_remote/auth_api_implementation.dart';
import 'package:baladeston/data/auth/repository_implementation/auth_repository_implementation.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/check_token/check_token_usecase.dart';
import 'package:baladeston/domain/auth/usecase/check_user_exists/check_user_exists_usecase.dart';
import 'package:baladeston/domain/auth/usecase/login_with_password/login_with_password_usecase.dart';
import 'package:baladeston/domain/auth/usecase/send_otp/send_otp_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

Future<void> initAuthModule() async {
  // Register http.Client
  getIt.registerLazySingleton<http.Client>(() => http.Client());

  // Register AuthApi with dependency
  getIt
    ..registerLazySingleton<AuthApi>(
      () => AuthApiImplementation(getIt<http.Client>()),
    )

    // Register AuthRepository
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImplementation(api: getIt<AuthApi>()),
    )

    // Register UseCases
    ..registerLazySingleton<CheckUserExistsUseCase>(
      () => CheckUserExistsUseCase(repository: getIt<AuthRepository>()),
    )
    ..registerLazySingleton<LoginWithPasswordUseCase>(
      () => LoginWithPasswordUseCase(repository: getIt<AuthRepository>()),
    )
    ..registerLazySingleton<CheckTokenUseCase>(
      () => CheckTokenUseCase(repository: getIt<AuthRepository>()),
    )
    ..registerLazySingleton<SendOtpUseCase>(
        () => SendOtpUseCase(repository: getIt<AuthRepository>()))

    // Register AuthCubit
    ..registerFactory<AuthCubit>(
      () => AuthCubit(
        checkUserExistsUseCase: getIt<CheckUserExistsUseCase>(),
        checkTokenUseCase: getIt<CheckTokenUseCase>(),
        loginWithPasswordUseCase: getIt<LoginWithPasswordUseCase>(),
        sendOtpUseCase: getIt<SendOtpUseCase>(),
      ),
    );
}
