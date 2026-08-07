import 'package:get_it/get_it.dart';

// -----------------------------------------------------------------------------
// Datasource
// -----------------------------------------------------------------------------
import 'package:baladeston/data/user/datasource/remote/user_remote_datasource/user_api.dart';
import 'package:baladeston/data/user/datasource/remote/user_remote_datasource/user_api_implementation.dart';

// -----------------------------------------------------------------------------
// Repository
// -----------------------------------------------------------------------------
import 'package:baladeston/data/user/repository_implementation/user_repository_implementaion.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';

// -----------------------------------------------------------------------------
// UseCases
// -----------------------------------------------------------------------------
import 'package:baladeston/domain/user/usecase/count_user/count_user_usecase.dart';
import 'package:baladeston/domain/user/usecase/delete_user_by_filter/delete_user_by_filter_usecase.dart';
import 'package:baladeston/domain/user/usecase/delete_user_by_id/delete_user_by_id_usecase.dart';
import 'package:baladeston/domain/user/usecase/get_user_by_filter/get_user_by_filter_usecase.dart';
import 'package:baladeston/domain/user/usecase/get_user_by_id/get_user_by_id_usecase.dart';
import 'package:baladeston/domain/user/usecase/update_user_by_id/update_user_by_id_usecase.dart';
import 'package:baladeston/domain/user/usecase/update_user_by_filter/update_user_by_filter.dart';

// -----------------------------------------------------------------------------
// Cubit
// -----------------------------------------------------------------------------
import 'package:baladeston/application/providers/user_cubit/user_cubit.dart';

final getIt = GetIt.instance;

Future<void> initUserModule() async {
  /* -------------------------------------------------------------------------- */
  /*                                DataSource                                  */
  /* -------------------------------------------------------------------------- */

  getIt.registerLazySingleton<UserApi>(
        () => UserApiImplementation(),
  );

  /* -------------------------------------------------------------------------- */
  /*                                Repository                                  */
  /* -------------------------------------------------------------------------- */

  getIt.registerLazySingleton<UserRepository>(
        () => UserRepositoryImplementation(
      api: getIt<UserApi>(),
    ),
  );

  /* -------------------------------------------------------------------------- */
  /*                                  UseCases                                  */
  /* -------------------------------------------------------------------------- */

  getIt
    ..registerLazySingleton<GetUserByIdUseCase>(
          () => GetUserByIdUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<GetUserByFilterUseCase>(
          () => GetUserByFilterUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<UpdateUserByIdUseCase>(
          () => UpdateUserByIdUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<UpdateUserByFilterUseCase>(
          () => UpdateUserByFilterUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<DeleteUserByIdUseCase>(
          () => DeleteUserByIdUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<DeleteUserByFilterUseCase>(
          () => DeleteUserByFilterUseCase(getIt<UserRepository>()),
    )
    ..registerLazySingleton<CountUserUseCase>(
          () => CountUserUseCase(getIt<UserRepository>()),
    );

  /* -------------------------------------------------------------------------- */
  /*                                   Cubit                                    */
  /* -------------------------------------------------------------------------- */

  getIt.registerFactory<UserCubit>(
        () => UserCubit(
      countUseCase: getIt<CountUserUseCase>(),
      getByFilterUseCase: getIt<GetUserByFilterUseCase>(),
      getByIdUseCase: getIt<GetUserByIdUseCase>(),
      updateByIdUseCase: getIt<UpdateUserByIdUseCase>(),
      updateByFilterUseCase: getIt<UpdateUserByFilterUseCase>(),
      deleteByIdUseCase: getIt<DeleteUserByIdUseCase>(),
      deleteByFilterUseCase: getIt<DeleteUserByFilterUseCase>(),
    ),
  );
}
