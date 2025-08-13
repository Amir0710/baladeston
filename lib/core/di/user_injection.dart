import 'package:baladeston/data/repository_implementaion/user_repository_implementaion%20.dart';
import 'package:get_it/get_it.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';
import 'package:baladeston/domain/usecase/user/change_password_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_users_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_user_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/user/update_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/delete_user_by_id_usecase.dart';
import 'package:baladeston/presentation/providers/user_cubit/user_cubit.dart';

final getIt = GetIt.instance;

/// این تابع را در main.dart یا injection اصلی صدا بزنید
Future<void> initUserModule() async {
  getIt
    // 1- Repository
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImplementation(),
    )

    // 2- UseCases
    ..registerLazySingleton<ChangePasswordUseCase>(
      () => ChangePasswordUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<GetUsersUseCase>(
      () => GetUsersUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<GetCurrentUserUseCase>(
      () => GetCurrentUserUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<UpdateUserUseCase>(
      () => UpdateUserUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<DeleteUserUseCase>(
      () => DeleteUserUseCase(getIt<UserRepository>()),
    )

    // 3- Cubit
    ..registerFactory<UserCubit>(
      () => UserCubit(
        changePasswordUseCase: getIt<ChangePasswordUseCase>(),
        getUsersUseCase: getIt<GetUsersUseCase>(),
        getCurrentUserUseCase: getIt<GetCurrentUserUseCase>(),
        updateUserUseCase: getIt<UpdateUserUseCase>(),
        deleteUserUseCase: getIt<DeleteUserUseCase>(),
      ),
    );
}
