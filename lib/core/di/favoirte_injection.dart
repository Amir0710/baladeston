import 'package:baladeston/domain/usecase/favorite/count_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/get_favotite_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

// Data Layer
import 'package:baladeston/data/datasources/remote/favorite_remote_datasource/favorite_api.dart';
import 'package:baladeston/data/repository_implementaion/favorite_repository_implementation.dart';

// Domain Layer
import 'package:baladeston/domain/repositories/favorite_repository.dart';
import 'package:baladeston/domain/usecase/favorite/create_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/update_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/get_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/delete_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/delete_favorite_by_filter_usecase.dart';

// Presentation Layer
import 'package:baladeston/presentation/providers/favorite_cubit/favorite_cubit.dart';

final getIt = GetIt.instance;

Future<void> initFavoriteModule() async {
  getIt
    // Repository
    ..registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepositoryImplementation(api: getIt<FavoriteApi>()),
    )

    // UseCases
    ..registerLazySingleton<CreateFavoriteUseCase>(
      () => CreateFavoriteUseCase(getIt<FavoriteRepository>()),
    )
    ..registerLazySingleton<UpdateFavoriteUseCase>(
      () => UpdateFavoriteUseCase(getIt<FavoriteRepository>()),
    )
    ..registerLazySingleton<GetFavoriteByFilterUseCase>(
      () => GetFavoriteByFilterUseCase(getIt<FavoriteRepository>()),
    )
    ..registerLazySingleton<GetFavoriteByIdUseCase>(
      () => GetFavoriteByIdUseCase(getIt<FavoriteRepository>()),
    )
    ..registerLazySingleton<DeleteFavoriteByIdUseCase>(
      () => DeleteFavoriteByIdUseCase(getIt<FavoriteRepository>()),
    )
    ..registerLazySingleton<DeleteFavoriteByFilterUseCase>(
      () => DeleteFavoriteByFilterUseCase(getIt<FavoriteRepository>()),
    )

    // Cubit
    ..registerFactory<FavoriteCubit>(
      () => FavoriteCubit(
        createUseCase: getIt<CreateFavoriteUseCase>(),
        updateUseCase: getIt<UpdateFavoriteUseCase>(),
        getByFilterUseCase: getIt<GetFavoriteByFilterUseCase>(),
        getByIdUseCase: getIt<GetFavoriteByIdUseCase>(),
        deleteByIdUseCase: getIt<DeleteFavoriteByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteFavoriteByFilterUseCase>(),
        countUseCase: getIt<CountFavoriteUseCase>(),
      ),
    );
}
