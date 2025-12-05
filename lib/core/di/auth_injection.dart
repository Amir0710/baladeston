import 'package:baladeston/data/datasources/remote/auth_remote_datasource/auth_api_implementation.dart';
import 'package:baladeston/presentation/providers/auth/auth_cubit.dart';
import 'package:get_it/get_it.dart';

// API
import 'package:baladeston/data/datasources/remote/auth_remote_datasource/auth_api.dart';

// Repository
import 'package:baladeston/domain/repositories/auth_repository.dart';
import 'package:baladeston/data/repository_implementation/auth_repository_implementation.dart';

// UseCase
import 'package:baladeston/domain/usecase/auth/check_token_usecase.dart';

// Cubit

final getIt = GetIt.instance;

Future<void> initAuthModule() async {
  getIt
  // API
    ..registerLazySingleton<AuthApi>(
          () => AuthApiImplementation(),
    )

  // Repository
    ..registerLazySingleton<AuthRepository>(
          () => AuthRepositoryImplementation(api: getIt<AuthApi>()),
    )

  // UseCase
    ..registerLazySingleton<CheckTokenUseCase>(
          () => CheckTokenUseCase(getIt<AuthRepository>()),
    )

  // Cubit
    ..registerFactory<AuthCubit>(
          () => AuthCubit(
        checkTokenUseCase: getIt<CheckTokenUseCase>(),
      ),
    );
}
