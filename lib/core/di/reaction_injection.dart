// Presentation Layer
import 'package:baladeston/application/providers/reaction_cubit/reaction_cubit.dart';
// Data Layer
import 'package:baladeston/data/reaction/datasource/remote/reaction_remote_datasource/reaction_api.dart';
import 'package:baladeston/data/reaction/repository_implementation/reaction/reaction_repository_implementation.dart';
// Domain Layer
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/count_reaction/count_reaction_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/create_reaction/create_reaction_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/delete_reaction_by_filter/delete_reaction_by_filter_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/delete_reaction_by_id/delete_reaction_by_id_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/get_reaction_by_filter/get_reaction_by_filter_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/get_reaction_by_id/get_reaction_by_id_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/update_reaction_by_filter/update_reaction_by_filter_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/update_reaction_by_id/update_reaction_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initReactionModule() async {
  getIt
    /* ---------------------------------------------------------------------- */
    /*                                Repository                               */
    /* ---------------------------------------------------------------------- */
    ..registerLazySingleton<ReactionRepository>(
      () => ReactionRepositoryImplementation(
        api: getIt<ReactionApi>(),
      ),
    )

    /* ---------------------------------------------------------------------- */
    /*                                 UseCases                                */
    /* ---------------------------------------------------------------------- */
    ..registerLazySingleton<CreateReactionUseCase>(
      () => CreateReactionUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateReactionByIdUseCase>(
      () => UpdateReactionByIdUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateReactionByFilterUseCase>(
      () => UpdateReactionByFilterUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )
    ..registerLazySingleton<GetReactionByIdUseCase>(
      () => GetReactionByIdUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )
    ..registerLazySingleton<GetReactionByFilterUseCase>(
      () => GetReactionByFilterUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )
    ..registerLazySingleton<DeleteReactionByIdUseCase>(
      () => DeleteReactionByIdUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )
    ..registerLazySingleton<DeleteReactionByFilterUseCase>(
      () => DeleteReactionByFilterUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )
    ..registerLazySingleton<CountReactionUseCase>(
      () => CountReactionUseCase(
        repository: getIt<ReactionRepository>(),
      ),
    )

    /* ---------------------------------------------------------------------- */
    /*                                   Cubit                                  */
    /* ---------------------------------------------------------------------- */
    ..registerFactory<ReactionCubit>(
      () => ReactionCubit(
        createUseCase: getIt<CreateReactionUseCase>(),
        updateByIdUseCase: getIt<UpdateReactionByIdUseCase>(),
        updateByFilterUseCase: getIt<UpdateReactionByFilterUseCase>(),
        getByIdUseCase: getIt<GetReactionByIdUseCase>(),
        getByFilterUseCase: getIt<GetReactionByFilterUseCase>(),
        deleteByIdUseCase: getIt<DeleteReactionByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteReactionByFilterUseCase>(),
        countUseCase: getIt<CountReactionUseCase>(),
      ),
    );
}
