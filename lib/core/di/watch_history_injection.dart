import 'package:baladeston/domain/usecase/watch_history/dalete_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/dalete_watch_history_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/get_last_position_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/get_last_position_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

// Repository
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

// UseCases
import 'package:baladeston/domain/usecase/watch_history/count_watch_history_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/create_watch_history_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/update_last_position_usecase.dart';

// Cubit
import 'package:baladeston/presentation/providers/watch_history_cubit/watch_history_cubit.dart';

final getIt = GetIt.instance;

Future<void> initWatchHistoryModule() async {
  getIt

    // UseCases
    ..registerLazySingleton<CountWatchHistoryUseCase>(
      () => CountWatchHistoryUseCase(repository: getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<GetWatchHistoryByFilterUseCase>(
      () => GetWatchHistoryByFilterUseCase(repository: getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<GetWatchHistoryByIdUseCase>(
      () => GetWatchHistoryByIdUseCase(repository: getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<CreateWatchHistoryUseCase>(
      () => CreateWatchHistoryUseCase(repository: getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<UpdateWatchHistoryUseCase>(
      () => UpdateWatchHistoryUseCase(repository: getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<DeleteWatchHistoryByIdUseCase>(
      () => DeleteWatchHistoryByIdUseCase(repository: getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<DeleteWatchHistoryByFilterUseCase>(
      () => DeleteWatchHistoryByFilterUseCase(repository: getIt<WatchHistoryRepository>()),
    )

    // Cubit
    ..registerFactory<WatchHistoryCubit>(
      () => WatchHistoryCubit(
        countUseCase: getIt<CountWatchHistoryUseCase>(),
        getByFilterUseCase: getIt<GetWatchHistoryByFilterUseCase>(),
        getByIdUseCase: getIt<GetWatchHistoryByIdUseCase>(),
        createUseCase: getIt<CreateWatchHistoryUseCase>(),
        updateUseCase: getIt<UpdateWatchHistoryUseCase>(),
        deleteByIdUseCase: getIt<DeleteWatchHistoryByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteWatchHistoryByFilterUseCase>(),
      ),
    );
}
