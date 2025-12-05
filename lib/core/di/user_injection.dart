import 'package:baladeston/data/datasources/remote/user_remote_datasource/user_api.dart';
import 'package:baladeston/data/datasources/remote/user_remote_datasource/user_api_implementation.dart';
import 'package:baladeston/data/repository_implementation/user_repository_implementaion.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';
import 'package:baladeston/domain/usecase/user/check_user_exists_usecase.dart';
import 'package:baladeston/domain/usecase/user/count_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/create_user_usecase.dart';
import 'package:baladeston/domain/usecase/user/delete_user_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/user/delete_user_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_user_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/user/get_user_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/user/login_usecase.dart';
import 'package:baladeston/domain/usecase/user/update_user_usecase.dart';
import 'package:baladeston/presentation/providers/user_cubit/user_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initUserModule() async {
  getIt
    // ✅ اول از همه Api رو رجیستر کن
    ..registerLazySingleton<UserApi>(
      () => UserApiImplementation(),
    )

    // بعدش Repository
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImplementation(api: getIt<UserApi>()),
    )

    // بقیه UseCase‌ها و Cubit هم که نوشتی درست هستند
    ..registerLazySingleton<GetUserByIdUseCase>(
      () => GetUserByIdUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<GetUsersByFilterUseCase>(
      () => GetUsersByFilterUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<UpdateUserUseCase>(
      () => UpdateUserUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<DeleteUserByIdUseCase>(
      () => DeleteUserByIdUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<DeleteUserByFilterUseCase>(
      () => DeleteUserByFilterUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<CreateUserUseCase>(
      () => CreateUserUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<CountUsersUseCase>(
      () => CountUsersUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<CheckUserExistsUseCase>(
      () => CheckUserExistsUseCase(getIt<UserRepository>()),
    )

    // Cubit
    ..registerFactory<UserCubit>(
      () => UserCubit(
        countUseCase: getIt<CountUsersUseCase>(),
        getByFilterUseCase: getIt<GetUsersByFilterUseCase>(),
        getByIdUseCase: getIt<GetUserByIdUseCase>(),
        createUseCase: getIt<CreateUserUseCase>(),
        updateUseCase: getIt<UpdateUserUseCase>(),
        deleteByIdUseCase: getIt<DeleteUserByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteUserByFilterUseCase>(),
        loginUseCase: getIt<LoginUseCase>(),
        checkUserExistsUseCase: getIt<CheckUserExistsUseCase>(),
      ),
    );
}
