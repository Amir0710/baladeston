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

import '../../data/repository_implementaion/theme_repository_implementation.dart';

final getIt = GetIt.instance;

Future<void> initThemeModule() async {
  getIt

    //DateSource
    ..registerLazySingleton<ThemeApi>(() => ThemeApiImplementation())

    // Repository
    ..registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImplementation(api: getIt<ThemeApi>()),
    )

    // UseCases
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
        getAllUseCase: getIt<GetAllThemesUseCase>(),
        getByNameUseCase: getIt<GetThemeByNameUseCase>(),
        getByIdUseCase: getIt<GetThemeByIdUseCase>(),
        createUseCase: getIt<CreateThemeUseCase>(),
        updateUseCase: getIt<UpdateThemeUseCase>(),
        deleteByIdUseCase: getIt<DeleteThemeByIdUseCase>(),
        deleteByNameUseCase: getIt<DeleteThemeByNameUseCase>(),
        countUseCase: getIt<CountAllThemesUseCase>(),
      ),
    );
}
