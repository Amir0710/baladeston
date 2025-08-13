import 'package:baladeston/data/datasources/remote/comment_remote_datasource/comment_api.dart';
import 'package:baladeston/domain/usecase/comment/delete_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/comment/get_comment_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

import 'package:baladeston/data/repository_implementaion/comment_repository_implementaion.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

import 'package:baladeston/domain/usecase/comment/create_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/update_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/count_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/delete_comment_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/comment/get_comment_by_filter_usecase.dart';

import 'package:baladeston/presentation/providers/comment_cubit/comment_cubit.dart';

final getIt = GetIt.instance;

Future<void> initCommentModule() async {
  getIt

    ..registerLazySingleton<CommentRepository>(
      () => CommentRepositoryImplementation(api: getIt<CommentApi>()),
    )

    ..registerLazySingleton<CreateCommentUseCase>(
      () => CreateCommentUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<UpdateCommentUseCase>(
      () => UpdateCommentUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<CountCommentUseCase>(
      () => CountCommentUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<DeleteCommentByIdUseCase>(
      () => DeleteCommentByIdUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<DeleteCommentByFilterUseCase>(
      () => DeleteCommentByFilterUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<GetCommentByFilterUseCase>(
      () => GetCommentByFilterUseCase(getIt<CommentRepository>()),
    )

    ..registerFactory<CommentCubit>(
      () => CommentCubit(
        createUseCase: getIt<CreateCommentUseCase>(),
        updateUseCase: getIt<UpdateCommentUseCase>(),
        countUseCase: getIt<CountCommentUseCase>(),
        deleteByIdUseCase: getIt<DeleteCommentByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteCommentByFilterUseCase>(),
        getByFilterUseCase: getIt<GetCommentByFilterUseCase>(),
        getByIdUseCase: getIt<GetCommentByIdUseCase>(),
      ),
    );
}
