
import 'package:baladeston/data/datasources/local/theme_local_datasource/theme_local.dart';
import 'package:baladeston/data/datasources/local/theme_local_datasource/theme_local_implementation.dart';
import 'package:baladeston/data/datasources/remote/theme_remote_datasource/theme_api.dart';
import 'package:baladeston/data/datasources/remote/theme_remote_datasource/theme_api_implementation.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';
import 'package:baladeston/domain/usecase/theme/count_all_themes_usecase.dart';
import 'package:baladeston/domain/usecase/theme/create_theme_usecase.dart';
import 'package:baladeston/domain/usecase/theme/delete_theme_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/theme/delete_theme_by_name_usecase.dart';
import 'package:baladeston/domain/usecase/theme/get_all_themes_usecase.dart';
import 'package:baladeston/domain/usecase/theme/get_theme_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/theme/get_theme_by_name_usecase.dart';
import 'package:baladeston/domain/usecase/theme/update_theme_usecase.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../data/repository_implementation/theme_repository_implementation.dart';

final getIt = GetIt.instance;

Future<void> initThemeModule() async {
  getIt
    ..registerLazySingleton<ThemeLocal>(() => ThemeLocalImpl())

    ..registerLazySingleton<ThemeApi>(() => ThemeApiImplementation())

    ..registerLazySingleton<ThemeRepository>(
          () => ThemeRepositoryImplementation(
        api: getIt<ThemeApi>(),
        local: getIt<ThemeLocal>(),
      ),
    )

    ..registerLazySingleton<CreateThemeUseCase>(
          () => CreateThemeUseCase(getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<UpdateThemeUseCase>(
          () => UpdateThemeUseCase(getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<CountAllThemesUseCase>(
          () => CountAllThemesUseCase(getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<DeleteThemeByIdUseCase>(
          () => DeleteThemeByIdUseCase(getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<DeleteThemeByNameUseCase>(
          () => DeleteThemeByNameUseCase(getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<GetThemeByIdUseCase>(
          () => GetThemeByIdUseCase(getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<GetThemeByNameUseCase>(
          () => GetThemeByNameUseCase(getIt<ThemeRepository>()),
    )
    ..registerLazySingleton<GetAllThemesUseCase>(
          () => GetAllThemesUseCase(getIt<ThemeRepository>()),
    )

  // Cubit
    ..registerFactory<ThemeCubit>(
          () => ThemeCubit(
        repository: getIt<ThemeRepository>(),
      ),
    );
}
