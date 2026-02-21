
import 'package:baladeston/application/providers/collection_cubit/collection_cubit.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/data/collection/repository_implementation/collection_repository_implementation.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/count_all/count_all_collection_usecase.dart';
import 'package:baladeston/domain/collection/usecase/create_collection/create_collection_usecase.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_filter/delete_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_id/delete_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_filter/get_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_id/get_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/update_collection_by_filter/update_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/update_collection_by_id/update_collection_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initCollectionModule() async {
  getIt

    // Repository
    ..registerLazySingleton<CollectionRepository>(
      () => CollectionRepositoryImplementation(api: getIt<CollectionApi>()),
    )

    // UseCases
    ..registerLazySingleton<CreateCollectionUseCase>(
      () => CreateCollectionUseCase(repository :getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<UpdateCollectionByFilterUseCase>(
      () => UpdateCollectionByFilterUseCase(repository :getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<UpdateCollectionByIdUseCase>(
          () => UpdateCollectionByIdUseCase(repository :getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<CountAllCollectionUseCase>(
      () => CountAllCollectionUseCase(repository :getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<DeleteCollectionByFilterUseCase>(
      () => DeleteCollectionByFilterUseCase(repository :getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<GetCollectionByFilterUseCase>(
          () => GetCollectionByFilterUseCase(repository :getIt<CollectionRepository>()),
    )
    ..registerLazySingleton<GetCollectionByIdUseCase>(
          () => GetCollectionByIdUseCase(repository :getIt<CollectionRepository>()),
    )

    // Cubit
    ..registerFactory<CollectionCubit>(
      () => CollectionCubit(
        createUseCase: getIt<CreateCollectionUseCase>(),
        countUseCase: getIt<CountAllCollectionUseCase>(),
        deleteByFilterUseCase: getIt<DeleteCollectionByFilterUseCase>(),
        getByFilterUseCase: getIt<GetCollectionByFilterUseCase>(),
        deleteByIdUseCase:  getIt<DeleteCollectionByIdUseCase>(),
        getByIdUseCase:  getIt<GetCollectionByIdUseCase>(),
        updateByIdUseCase: getIt<UpdateCollectionByIdUseCase>() ,
        updateByFilterUseCase: getIt<UpdateCollectionByFilterUseCase>(),
      ),
    );
}
