/* -------------------------------------------------------------------------- */
/*                              PRESENTATION LAYER                             */
/* -------------------------------------------------------------------------- */
import 'package:baladeston/application/providers/comment_cubit/comment_cubit.dart';
/* -------------------------------------------------------------------------- */
/*                                 DATA LAYER                                 */
/* -------------------------------------------------------------------------- */
import 'package:baladeston/data/comment/datasource/remote/comment_remote_datasource/comment_api.dart';
import 'package:baladeston/data/comment/datasource/remote/comment_remote_datasource/comment_api_implementation.dart';
import 'package:baladeston/data/comment/repository_implementation/comment/comment_repository_implementation.dart';
/* -------------------------------------------------------------------------- */
/*                                DOMAIN LAYER                                */
/* -------------------------------------------------------------------------- */
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/count_comment/count_comment_usecase.dart';
import 'package:baladeston/domain/comment/usecase/create_comment/create_comment_usecase.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_filter/delete_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_id/delete_comment_by_id_usecase.dart';
import 'package:baladeston/domain/comment/usecase/comment/get_comment_by_filter/get_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/get_comment_by_id/get_comment_by_id_usecase.dart';
import 'package:baladeston/domain/comment/usecase/comment/update_comment_by_filter/update_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/update_comment_by_id/update_comment_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initCommentModule() async {
  /* -------------------------------------------------------------------------- */
  /*                                   API LAYER                                */
  /* -------------------------------------------------------------------------- */
  getIt
    ..registerLazySingleton<CommentApi>(
      () => CommentApiImplementation(),
    )

    /* -------------------------------------------------------------------------- */
    /*                               REPOSITORY LAYER                             */
    /* -------------------------------------------------------------------------- */
    ..registerLazySingleton<CommentRepository>(
      () => CommentRepositoryImplementation(api: getIt<CommentApi>()),
    )

    /* -------------------------------------------------------------------------- */
    /*                                 USE CASES                                  */
    /* -------------------------------------------------------------------------- */
    ..registerLazySingleton<CreateCommentUseCase>(
      () => CreateCommentUseCase(repository: getIt<CommentRepository>()),
    )
    ..registerLazySingleton<UpdateCommentByIdUseCase>(
      () => UpdateCommentByIdUseCase(repository: getIt<CommentRepository>()),
    )
    ..registerLazySingleton<UpdateCommentByFilterUseCase>(
      () =>
          UpdateCommentByFilterUseCase(repository: getIt<CommentRepository>()),
    )
    ..registerLazySingleton<DeleteCommentByIdUseCase>(
      () => DeleteCommentByIdUseCase(repository: getIt<CommentRepository>()),
    )
    ..registerLazySingleton<DeleteCommentByFilterUseCase>(
      () =>
          DeleteCommentByFilterUseCase(repository: getIt<CommentRepository>()),
    )
    ..registerLazySingleton<GetCommentByIdUseCase>(
      () => GetCommentByIdUseCase(repository: getIt<CommentRepository>()),
    )
    ..registerLazySingleton<GetCommentByFilterUseCase>(
      () => GetCommentByFilterUseCase(repository: getIt<CommentRepository>()),
    )
    ..registerLazySingleton<CountCommentUseCase>(
      () => CountCommentUseCase(repository: getIt<CommentRepository>()),
    )

    /* -------------------------------------------------------------------------- */
    /*                                   CUBIT                                    */
    /* -------------------------------------------------------------------------- */
    ..registerFactory<CommentCubit>(
      () => CommentCubit(
        createUseCase: getIt<CreateCommentUseCase>(),
        updateByIdUseCase: getIt<UpdateCommentByIdUseCase>(),
        updateByFilterUseCase: getIt<UpdateCommentByFilterUseCase>(),
        countUseCase: getIt<CountCommentUseCase>(),
        deleteByIdUseCase: getIt<DeleteCommentByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteCommentByFilterUseCase>(),
        getByFilterUseCase: getIt<GetCommentByFilterUseCase>(),
        getByIdUseCase: getIt<GetCommentByIdUseCase>(),
      ),
    );
}
