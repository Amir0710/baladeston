import 'package:baladeston/domain/usecase/watch_history/create_watch_history_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/dalete_watch_history_list_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/delete_all_history_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/get_last_position_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/update_last_position_usecase.dart';
import 'package:get_it/get_it.dart';

import 'package:baladeston/domain/repositories/watch_history_repository.dart';


import 'package:baladeston/presentation/providers/watch_history_cubit/watch_history_cubit.dart';

final getIt = GetIt.instance;

/// ثبت وابستگی‌های ماژول Watch History
Future<void> initWatchHistoryModule() async {
  getIt

    // UseCases
    ..registerLazySingleton<CreateWatchHistory>(
      () => CreateWatchHistory(getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<DeleteAllHistory>(
      () => DeleteAllHistory(getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<DeleteWatchHistoryList>(
      () => DeleteWatchHistoryList(getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<GetLastPosition>(
      () => GetLastPosition(getIt<WatchHistoryRepository>()),
    )
    ..registerLazySingleton<UpdateLastPosition>(
      () => UpdateLastPosition(repository: getIt<WatchHistoryRepository>()),
    )

    // Cubit
    ..registerFactory<WatchHistoryCubit>(
      () => WatchHistoryCubit(
        createWatchHistory: getIt<CreateWatchHistory>(),
        deleteAllHistory: getIt<DeleteAllHistory>(),
        deleteWatchHistoryList: getIt<DeleteWatchHistoryList>(),
        getLastPosition: getIt<GetLastPosition>(),
        updateLastPosition: getIt<UpdateLastPosition>(),
      ),
    );
}
