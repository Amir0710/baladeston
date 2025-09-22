import 'package:get_it/get_it.dart';

// Data Layer
import 'package:baladeston/data/datasources/remote/video_remote_datasource/video_api.dart';
import 'package:baladeston/data/repository_implementation/video_repository_implementation.dart';

// Domain Layer
import 'package:baladeston/domain/repositories/video_repository.dart';
import 'package:baladeston/domain/usecase/video/get_video_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/video/get_video_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/video/upload_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/update_video_usecase.dart';
import 'package:baladeston/domain/usecase/video/delete_video_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/video/delete_video_list_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/video/count_video_usecase.dart';

// Presentation Layer
import 'package:baladeston/presentation/providers/video_cubit/video_cubit.dart';

final getIt = GetIt.instance;

Future<void> initVideoModule() async {
  getIt
    // Repository
    ..registerLazySingleton<VideoRepository>(
      () => VideoRepositoryImplementation(api: getIt<VideoApi>()),
    )

    // UseCases
    ..registerLazySingleton<GetVideoByIdUseCase>(
      () => GetVideoByIdUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<GetVideosByFilterUseCase>(
      () => GetVideosByFilterUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<UploadVideoUseCase>(
      () => UploadVideoUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<UpdateVideoUseCase>(
      () => UpdateVideoUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<DeleteVideoByIdUseCase>(
      () => DeleteVideoByIdUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<DeleteVideoListByFilterUseCase>(
      () => DeleteVideoListByFilterUseCase(getIt<VideoRepository>()),
    )
    ..registerLazySingleton<CountVideosUseCase>(
      () => CountVideosUseCase(getIt<VideoRepository>()),
    )

    // Cubit
    ..registerFactory<VideoCubit>(
      () => VideoCubit(
        countUseCase: getIt<CountVideosUseCase>(),
        getByFilterUseCase: getIt<GetVideosByFilterUseCase>(),
        getByIdUseCase: getIt<GetVideoByIdUseCase>(),
        uploadUseCase: getIt<UploadVideoUseCase>(),
        updateUseCase: getIt<UpdateVideoUseCase>(),
        deleteByIdUseCase: getIt<DeleteVideoByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteVideoListByFilterUseCase>(),
      ),
    );
}
