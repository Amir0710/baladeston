// -----------------------------------------------------------------------------
// Cubit
// -----------------------------------------------------------------------------
import 'package:baladeston/application/providers/video_cubit/video_cubit.dart';
import 'package:baladeston/data/video/datasource/remote/video_remote_datasource/video_api.dart';
import 'package:baladeston/data/video/repository_implementation/video_repository_implementation.dart';
// -----------------------------------------------------------------------------
// Repository
// -----------------------------------------------------------------------------
import 'package:baladeston/domain/video/repository/video_repository.dart';
// -----------------------------------------------------------------------------
// UseCases
// -----------------------------------------------------------------------------
import 'package:baladeston/domain/video/usecase/count_video/count_video_usecase.dart';
import 'package:baladeston/domain/video/usecase/create_video/create_video_usecase.dart';
import 'package:baladeston/domain/video/usecase/delete_video_by_filter/delete_video_by_filter_usecase.dart';
import 'package:baladeston/domain/video/usecase/delete_video_by_id/delete_video_by_id_usecase.dart';
import 'package:baladeston/domain/video/usecase/get_video_by_filter/get_video_by_filter_usecase.dart';
import 'package:baladeston/domain/video/usecase/get_video_by_id/get_video_by_id_usecase.dart';
import 'package:baladeston/domain/video/usecase/update_video_by_filter/update_video_by_filter_usecase.dart';
import 'package:baladeston/domain/video/usecase/update_video_by_id/update_video_by_id_usecase.dart';
import 'package:baladeston/domain/video/usecase/video_upload_image_file/video_upload_image_file_usecase.dart';
import 'package:baladeston/domain/video/usecase/video_upload_video_file/video_upload_video_file_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initVideoModule() async {
/* -------------------------------------------------------------------------- */
/*                              Repository Layer                              */
/* -------------------------------------------------------------------------- */
  getIt.registerLazySingleton<VideoRepository>(
    () => VideoRepositoryImplementation(
      api: getIt<VideoApi>(),
    ),
  );

/* -------------------------------------------------------------------------- */
/*                                UseCase Layer                               */
/* -------------------------------------------------------------------------- */
  getIt
// CRUD & Query
    ..registerLazySingleton<CountVideosUseCase>(
      () => CountVideosUseCase(repository: getIt<VideoRepository>()),
    )
    ..registerLazySingleton<GetVideoByFilterUseCase>(
      () => GetVideoByFilterUseCase(repository: getIt<VideoRepository>()),
    )
    ..registerLazySingleton<GetVideoByIdUseCase>(
      () => GetVideoByIdUseCase(repository: getIt<VideoRepository>()),
    )
    ..registerLazySingleton<VideoUploadVideoFileUsecase>(
      () => VideoUploadVideoFileUsecase(repository: getIt<VideoRepository>()),
    )
    ..registerLazySingleton<UpdateVideoByIdUseCase>(
      () => UpdateVideoByIdUseCase(repository: getIt<VideoRepository>()),
    )
    ..registerLazySingleton<UpdateVideoByFilterUseCase>(
      () => UpdateVideoByFilterUseCase(repository: getIt<VideoRepository>()),
    )
    ..registerLazySingleton<DeleteVideoByIdUseCase>(
      () => DeleteVideoByIdUseCase(repository: getIt<VideoRepository>()),
    )
    ..registerLazySingleton<DeleteVideoByFilterUseCase>(
      () => DeleteVideoByFilterUseCase(repository: getIt<VideoRepository>()),
    );
/* -------------------------------------------------------------------------- */
/*                                 Cubit Layer                                */
/* -------------------------------------------------------------------------- */
  getIt.registerFactory<VideoCubit>(
    () => VideoCubit(
      countUseCase: getIt<CountVideosUseCase>(),
      getByFilterUseCase: getIt<GetVideoByFilterUseCase>(),
      getByIdUseCase: getIt<GetVideoByIdUseCase>(),
      uploadVideoUseCase: getIt<VideoUploadVideoFileUsecase>(),
      updateByIdUseCase: getIt<UpdateVideoByIdUseCase>(),
      updateByFilterUseCase: getIt<UpdateVideoByFilterUseCase>(),
      deleteByIdUseCase: getIt<DeleteVideoByIdUseCase>(),
      deleteByFilterUseCase: getIt<DeleteVideoByFilterUseCase>(),
      createVideoUseCase: getIt<CreateVideoUseCase>(),
      uploadImageUseCase: getIt<VideoUploadImageFileUsecase>(),
    ),
  );
}
