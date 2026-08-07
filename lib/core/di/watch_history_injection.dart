import 'package:baladeston/application/providers/watch_history_cubit/watch_history_cubit.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';
import 'package:baladeston/domain/watch_history/usecase/count_watch_history/count_watch_history_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/create_watch_history/create_watch_history_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/delete_watch_history_by_filter/delete_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/delete_watch_history_by_id/delete_watch_history_by_id_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/get_watch_history_by_filter/get_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/get_watch_history_by_id/get_watch_history_by_id_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/update_watch_history_by_filter/update_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/update_watch_history_by_id/update_watch_history_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> initWatchHistoryModule() async {
  getIt
    ..registerLazySingleton<CreateWatchHistoryUseCase>(
      () => CreateWatchHistoryUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateWatchHistoryByIdUseCase>(
      () => UpdateWatchHistoryByIdUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateWatchHistoryByFilterUseCase>(
      () => UpdateWatchHistoryByFilterUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )
    ..registerLazySingleton<GetWatchHistoryByIdUseCase>(
      () => GetWatchHistoryByIdUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )
    ..registerLazySingleton<GetWatchHistoryByFilterUseCase>(
      () => GetWatchHistoryByFilterUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )
    ..registerLazySingleton<DeleteWatchHistoryByIdUseCase>(
      () => DeleteWatchHistoryByIdUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )
    ..registerLazySingleton<DeleteWatchHistoryByFilterUseCase>(
      () => DeleteWatchHistoryByFilterUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )
    ..registerLazySingleton<CountWatchHistoryUseCase>(
      () => CountWatchHistoryUseCase(
        repository: getIt<WatchHistoryRepository>(),
      ),
    )

    ..registerFactory<WatchHistoryCubit>(
      () => WatchHistoryCubit(
        createUseCase: getIt<CreateWatchHistoryUseCase>(),
        updateByIdUseCase: getIt<UpdateWatchHistoryByIdUseCase>(),
        updateByFilterUseCase: getIt<UpdateWatchHistoryByFilterUseCase>(),
        getByIdUseCase: getIt<GetWatchHistoryByIdUseCase>(),
        getByFilterUseCase: getIt<GetWatchHistoryByFilterUseCase>(),
        deleteByIdUseCase: getIt<DeleteWatchHistoryByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteWatchHistoryByFilterUseCase>(),
        countUseCase: getIt<CountWatchHistoryUseCase>(),
      ),
    );
}
