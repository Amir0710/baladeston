import 'package:get_it/get_it.dart';
import 'package:baladeston/data/repository_implementaion/video_repository_implementation.dart';
import 'package:baladeston/domain/repositories/video_repository.dart';

import 'package:baladeston/domain/usecase/video/delete_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/is_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_videos_filtered_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_last_watch_position_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_favorite_videos_usecase.dart';
import 'package:baladeston/domain/usecase/video/report_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/toggle_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/video/upload_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/update_last_watch_usecase.dart';
import 'package:baladeston/domain/usecase/video/update_video_usecase.dart';

import 'package:baladeston/presentation/providers/video_cubit/video_cubit.dart';

final getIt = GetIt.instance;

/// قبل از runApp() در main.dart صدا زده شود:
/// await initVideoModule();
Future<void> initVideoModule() async {
  getIt
    // 1- Repository
    ..registerLazySingleton<VideoRepository>(
      () => VideoRepositoryImplementation(),
    )

    // 2- UseCases
    ..registerLazySingleton<DeleteVideoUseCase>(
      () => DeleteVideoUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<IsFavoriteUseCase>(
      () => IsFavoriteUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<GetVideosFilteredUseCase>(
      () => GetVideosFilteredUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<GetLastWatchPositionUseCase>(
      () => GetLastWatchPositionUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<GetFavoriteVideosUseCase>(
      () => GetFavoriteVideosUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<ReportVideoUseCase>(
      () => ReportVideoUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<ToggleFavoriteUseCase>(
      () => ToggleFavoriteUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<UploadVideoUseCase>(
      () => UploadVideoUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<UpdateLastWatchUseCase>(
      () => UpdateLastWatchUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<UpdateVideoUseCase>(
      () => UpdateVideoUseCase(getIt<VideoRepository>()),
    )

    // 3- Cubit
    ..registerFactory<VideoCubit>(
      () => VideoCubit(
        deleteUseCase: getIt<DeleteVideoUseCase>(),
        isFavoriteUseCase: getIt<IsFavoriteUseCase>(),
        getFilteredUseCase: getIt<GetVideosFilteredUseCase>(),
        getLastPositionUseCase: getIt<GetLastWatchPositionUseCase>(),
        getFavoriteUseCase: getIt<GetFavoriteVideosUseCase>(),
        reportUseCase: getIt<ReportVideoUseCase>(),
        toggleFavoriteUseCase: getIt<ToggleFavoriteUseCase>(),
        uploadVideoUseCase: getIt<UploadVideoUseCase>(),
        updateLastWatchUseCase: getIt<UpdateLastWatchUseCase>(),
        updateVideoUseCase: getIt<UpdateVideoUseCase>(),
      ),
    );
}
