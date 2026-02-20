
import 'package:baladeston/data/theme/datasource/local/theme_local_datasource/theme_local.dart';
import 'package:baladeston/data/theme/datasource/local/theme_local_datasource/theme_local_implementation.dart';
import 'package:baladeston/data/theme/datasource/remote/theme_remote_datasource/theme_api.dart';
import 'package:baladeston/data/theme/datasource/remote/theme_remote_datasource/theme_api_implementation.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';
import 'package:baladeston/domain/theme/usecase/count_all_themes_usecase.dart';
import 'package:baladeston/domain/theme/usecase/create_theme_usecase.dart';
import 'package:baladeston/domain/theme/delete_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/usecase/delete_theme_by_name_usecase.dart';
import 'package:baladeston/domain/usecase/theme/get_all_themes_usecase.dart';
import 'package:baladeston/domain/usecase/theme/get_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/get_theme_by_name_usecase.dart';
import 'package:baladeston/domain/usecase/theme/update_theme_usecase.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../data/theme/repository_implementation/theme_repository_implementation.dart';

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
    ..registerLazySingleton<CountAllThemeUseCase>(
          () => CountAllThemeUseCase(getIt<ThemeRepository>()),
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
