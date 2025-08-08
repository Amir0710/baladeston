import 'package:get_it/get_it.dart';

import 'package:baladeston/data/repository_implementaion/comment_repository_implementaion.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

import 'package:baladeston/domain/usecase/comment/create_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/update_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/count_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/delete_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/get_comment_by_filter_usecase.dart';

import 'package:baladeston/presentation/providers/comment_cubit/comment_cubit.dart';

final getIt = GetIt.instance;

/// ثبت وابستگی‌های ماژول نظرات (Comment)
Future<void> initCommentModule() async {
  getIt

    // Repository
    ..registerLazySingleton<CommentRepository>(
      () => CommentRepositoryImplementation(),
    )

    // UseCases
    ..registerLazySingleton<CreateCommentUseCase>(
      () => CreateCommentUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<UpdateCommentUseCase>(
      () => UpdateCommentUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<CountCommentUseCase>(
      () => CountCommentUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<DeleteCommentUseCase>(
      () => DeleteCommentUseCase(getIt<CommentRepository>()),
    )
    ..registerLazySingleton<GetCommentByFilterUseCase>(
      () => GetCommentByFilterUseCase(getIt<CommentRepository>()),
    )

    // Cubit
    ..registerFactory<CommentCubit>(
      () => CommentCubit(
        createUseCase: getIt<CreateCommentUseCase>(),
        updateUseCase: getIt<UpdateCommentUseCase>(),
        countUseCase: getIt<CountCommentUseCase>(),
        deleteUseCase: getIt<DeleteCommentUseCase>(),
        getUseCase: getIt<GetCommentByFilterUseCase>(),
      ),
    );
}
