// -----------------------------------------------------------------------------
// Cubit
// -----------------------------------------------------------------------------
import 'package:baladeston/application/providers/theme_cubit/theme_cubit.dart';
// -----------------------------------------------------------------------------
// DataSources
// -----------------------------------------------------------------------------
import 'package:baladeston/data/theme/datasource/local/theme_local_datasource/theme_local.dart';
import 'package:baladeston/data/theme/datasource/local/theme_local_datasource/theme_local_implementation.dart';
import 'package:baladeston/data/theme/datasource/remote/theme_remote_datasource/theme_api.dart';
import 'package:baladeston/data/theme/datasource/remote/theme_remote_datasource/theme_api_implementation.dart';
// -----------------------------------------------------------------------------
// Repository
// -----------------------------------------------------------------------------
import 'package:baladeston/data/theme/repository_implementation/theme_repository_implementation.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';
// -----------------------------------------------------------------------------
// UseCases
// -----------------------------------------------------------------------------
import 'package:baladeston/domain/theme/usecase/count_theme/count_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/create_theme/create_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/delete_theme_by_filter/delete_theme_by_filter_usecase.dart';
import 'package:baladeston/domain/theme/usecase/delete_theme_by_id/delete_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_all_theme/get_all_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_theme_by_id/get_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_theme_by_name/get_theme_by_name_usecase.dart';
import 'package:baladeston/domain/theme/usecase/init_theme/init_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/set_theme/set_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/update_theme_by_filter/update_theme_by_filter_usecase.dart';
import 'package:baladeston/domain/theme/usecase/update_theme_by_id/update_theme_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initThemeModule() async {
  /* -------------------------------------------------------------------------- */
  /*                                DataSources                                 */
  /* -------------------------------------------------------------------------- */

  getIt
    ..registerLazySingleton<ThemeLocal>(
      () => ThemeLocalImpl(),
    )
    ..registerLazySingleton<ThemeApi>(
      () => ThemeApiImplementation(),
    )

    /* -------------------------------------------------------------------------- */
    /*                                 Repository                                 */
    /* -------------------------------------------------------------------------- */

    ..registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImplementation(
        api: getIt<ThemeApi>(),
        local: getIt<ThemeLocal>(),
      ),
    )

    /* -------------------------------------------------------------------------- */
    /*                                  UseCases                                  */
    /* -------------------------------------------------------------------------- */

    ..registerLazySingleton<GetAllThemeUseCase>(
      () => GetAllThemeUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<GetThemeByIdUseCase>(
      () => GetThemeByIdUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<GetThemeByNameUseCase>(
      () => GetThemeByNameUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<CreateThemeUseCase>(
      () => CreateThemeUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<UpdateThemeByIdUseCase>(
      () => UpdateThemeByIdUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<UpdateThemeByFilterUseCase>(
      () => UpdateThemeByFilterUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<DeleteThemeByIdUseCase>(
      () => DeleteThemeByIdUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<DeleteThemeByFilterUseCase>(
      () => DeleteThemeByFilterUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<CountThemeUseCase>(
      () => CountThemeUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<InitThemeUseCase>(
      () => InitThemeUseCase(repository: getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<SetThemeUseCase>(
      () => SetThemeUseCase(repository: getIt<ThemeRepository>()),
    )

    /* -------------------------------------------------------------------------- */
    /*                                   Cubit                                    */
    /* -------------------------------------------------------------------------- */
    ..registerFactory<ThemeCubit>(
      () => ThemeCubit(
        getAllUseCase: getIt<GetAllThemeUseCase>(),
        getByIdUseCase: getIt<GetThemeByIdUseCase>(),
        getByNameUseCase: getIt<GetThemeByNameUseCase>(),
        createUseCase: getIt<CreateThemeUseCase>(),
        updateByIdUseCase: getIt<UpdateThemeByIdUseCase>(),
        updateByFilterUseCase: getIt<UpdateThemeByFilterUseCase>(),
        deleteByIdUseCase: getIt<DeleteThemeByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteThemeByFilterUseCase>(),
        countUseCase: getIt<CountThemeUseCase>(),
        initUseCase: getIt<InitThemeUseCase>(),
        setThemeUseCase: getIt<SetThemeUseCase>(),
      ),
    );
}
