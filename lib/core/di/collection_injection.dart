import 'package:baladeston/data/datasources/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/domain/usecase/collection/create_collections_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:baladeston/data/repository_implementaion/collection_repository_implementation.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';
import 'package:baladeston/domain/usecase/collection/update_collection_usecase.dart';
import 'package:baladeston/domain/usecase/collection/count_all_collections_usecase.dart';
import 'package:baladeston/domain/usecase/collection/delete_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/collection/get_collection_usecase.dart';

import 'package:baladeston/presentation/providers/collection_cubit/collection_cubit.dart';

final getIt = GetIt.instance;

Future<void> initCollectionModule() async {
  getIt

    // Repository
    ..registerLazySingleton<CollectionRepository>(
      () => CollectionRepositoryImplementation(api: getIt<CollectionApi>()),
    )

    // UseCases
    ..registerLazySingleton<CreateCollectionUseCase>(
      () => CreateCollectionUseCase(getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<UpdateCollectionUseCase>(
      () => UpdateCollectionUseCase(getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<CountAllCollectionUseCase>(
      () => CountAllCollectionUseCase(getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<DeleteCollectionByFilterUseCase>(
      () => DeleteCollectionByFilterUseCase(getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<GetCollectionUseCase>(
      () => GetCollectionUseCase(getIt<CollectionRepository>()),
    )

    // Cubit
    ..registerFactory<CollectionCubit>(
      () => CollectionCubit(
        createUseCase: getIt<CreateCollectionUseCase>(),
        updateUseCase: getIt<UpdateCollectionUseCase>(),
        countUseCase: getIt<CountAllCollectionUseCase>(),
        deleteUseCase: getIt<DeleteCollectionByFilterUseCase>(),
        getUseCase: getIt<GetCollectionUseCase>(),
      ),
    );
}
