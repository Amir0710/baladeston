import 'package:baladeston/domain/usecase/favorite/create_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/get_last_position_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/toggle_favorite_usecase.dart';
import 'package:get_it/get_it.dart';

import 'package:baladeston/domain/repositories/favorite_repository.dart';


import 'package:baladeston/presentation/providers/favorite_cubit/favorite_cubit.dart';

final getIt = GetIt.instance;

/// ثبت وابستگی‌های ماژول Favorite
Future<void> initFavoriteModule() async {
  getIt

    // UseCases
    ..registerLazySingleton<CreateFavorite>(
      () => CreateFavorite(getIt<FavoriteRepository>()),
    )
    ..registerLazySingleton<ToggleFavorite>(
      () => ToggleFavorite(getIt<FavoriteRepository>()),
    )
    ..registerLazySingleton<GetLastPosition>(
      () => GetLastPosition(getIt<FavoriteRepository>()),
    )
    // Cubit
    ..registerFactory<FavoriteCubit>(
      () => FavoriteCubit(
        createFavorite: getIt<CreateFavorite>(),
        toggleFavorite: getIt<ToggleFavorite>(),
        getLastPosition: getIt<GetLastPosition>(),
      ),
    );
}
