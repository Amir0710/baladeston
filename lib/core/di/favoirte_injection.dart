// Presentation Layer
import 'package:baladeston/application/providers/favorite_cubit/favorite_cubit.dart';
// Data Layer
import 'package:baladeston/data/favorite/datasource/remote/favorite_remote_datasource/favorite_api.dart';
import 'package:baladeston/data/favorite/repository_implementation/favorite_repository_implementation.dart';
// Domain Layer
import 'package:baladeston/domain/favorite/repository/favorite_repository.dart';
import 'package:baladeston/domain/favorite/usecase/count_favorite/count_favorite_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/create_favorite/create_favorite_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_filter/delete_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_id/delete_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_filter/get_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_id/get_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/update_favorite_by_filter/update_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/update_favorite_by_id/update_favorite_by_id_usecase.dart.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initFavoriteModule() async {
  getIt
    /* ---------------------------------------------------------------------- */
    /*                                Repository                               */
    /* ---------------------------------------------------------------------- */
    ..registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepositoryImplementation(
        api: getIt<FavoriteApi>(),
      ),
    )

    /* ---------------------------------------------------------------------- */
    /*                                 UseCases                                */
    /* ---------------------------------------------------------------------- */
    ..registerLazySingleton<CreateFavoriteUseCase>(
      () => CreateFavoriteUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateFavoriteByIdUseCase>(
      () => UpdateFavoriteByIdUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateFavoriteByFilterUseCase>(
      () => UpdateFavoriteByFilterUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )
    ..registerLazySingleton<GetFavoriteByIdUseCase>(
      () => GetFavoriteByIdUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )
    ..registerLazySingleton<GetFavoriteByFilterUseCase>(
      () => GetFavoriteByFilterUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )
    ..registerLazySingleton<DeleteFavoriteByIdUseCase>(
      () => DeleteFavoriteByIdUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )
    ..registerLazySingleton<DeleteFavoriteByFilterUseCase>(
      () => DeleteFavoriteByFilterUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )
    ..registerLazySingleton<CountFavoriteUseCase>(
      () => CountFavoriteUseCase(
        repository: getIt<FavoriteRepository>(),
      ),
    )

    /* ---------------------------------------------------------------------- */
    /*                                   Cubit                                  */
    /* ---------------------------------------------------------------------- */
    ..registerFactory<FavoriteCubit>(
      () => FavoriteCubit(
        createUseCase: getIt<CreateFavoriteUseCase>(),
        updateByIdUseCase: getIt<UpdateFavoriteByIdUseCase>(),
        updateByFilterUseCase: getIt<UpdateFavoriteByFilterUseCase>(),
        getByIdUseCase: getIt<GetFavoriteByIdUseCase>(),
        getByFilterUseCase: getIt<GetFavoriteByFilterUseCase>(),
        deleteByIdUseCase: getIt<DeleteFavoriteByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteFavoriteByFilterUseCase>(),
        countUseCase: getIt<CountFavoriteUseCase>(),
      ),
    );
}
