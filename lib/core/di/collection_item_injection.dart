import 'package:baladeston/application/providers/collection_item_cubit/collection_item_cubit.dart';
import 'package:baladeston/application/providers/collection_video_cubit/collection_video_cubit.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_item_remote_datasource/collection_item_api.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_item_remote_datasource/collection_item_api_implementation.dart';
import 'package:baladeston/data/collection/repository_implementation/item/collection_item_repository_implementation.dart';
import 'package:baladeston/domain/collection/repository/item/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/add_collection_item_usecase/add_collection_item_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/get_collection_item_by_filter/get_collection_item_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/get_videos_by_collection_item_filter/get_videos_by_collection_item_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/remove_collection_item_by_filter/remove_collection_item_by_filter_useCase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/remove_collection_item_by_id/delete_collection_item_by_id_useCase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/update_collection_item_by_filter/update_collection_item_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/update_collection_item_by_id/update_collection_item_by_id_useCase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initCollectionItemModule() async {
  getIt

    // api
    ..registerLazySingleton<CollectionItemApi>(
      () => CollectionItemApiImplementation(
        client: getIt<AppHttpClient>(),
      ),
    )

    // Repository
    ..registerLazySingleton<CollectionItemRepository>(
      () => CollectionItemRepositoryImplementation(
        itemApi: getIt<CollectionItemApi>(),
      ),
    )

    //usecase
    ..registerLazySingleton<AddCollectionItemUseCase>(
      () => AddCollectionItemUseCase(
          repository: getIt<CollectionItemRepository>()),
    )
    ..registerLazySingleton<UpdateCollectionItemByIdUseCase>(
      () => UpdateCollectionItemByIdUseCase(
          repository: getIt<CollectionItemRepository>()),
    )
    ..registerLazySingleton<UpdateCollectionItemByFilterUseCase>(
      () => UpdateCollectionItemByFilterUseCase(
          repository: getIt<CollectionItemRepository>()),
    )
    ..registerLazySingleton<RemoveCollectionItemByIdUseCase>(
      () => RemoveCollectionItemByIdUseCase(
          repository: getIt<CollectionItemRepository>()),
    )
    ..registerLazySingleton<RemoveCollectionItemByFilterUseCase>(
      () => RemoveCollectionItemByFilterUseCase(
          repository: getIt<CollectionItemRepository>()),
    )
    ..registerLazySingleton<GetCollectionItemByCollectionItemFilterUseCase>(
      () => GetCollectionItemByCollectionItemFilterUseCase(
          repository: getIt<CollectionItemRepository>()),
    )

    // --------------------------------------------------
    // 2. UseCases — CollectionVideos
    // --------------------------------------------------
    ..registerLazySingleton<GetVideosByCollectionItemFilterUseCase>(
      () => GetVideosByCollectionItemFilterUseCase(
          repository: getIt<CollectionItemRepository>()),
    )

    // --------------------------------------------------
    // 3. Cubits
    // --------------------------------------------------
    ..registerFactory<CollectionItemCubit>(
      () => CollectionItemCubit(
        addCollectionItemUseCase: getIt<AddCollectionItemUseCase>(),
        updateCollectionItemByIdUseCase:
            getIt<UpdateCollectionItemByIdUseCase>(),
        updateCollectionItemByFilterUseCase:
            getIt<UpdateCollectionItemByFilterUseCase>(),
        removeCollectionItemByIdUseCase:
            getIt<RemoveCollectionItemByIdUseCase>(),
        removeCollectionItemByFilterUseCase:
            getIt<RemoveCollectionItemByFilterUseCase>(),
        getCollectionItemByFilterUseCase:
            getIt<GetCollectionItemByCollectionItemFilterUseCase>(),
      ),
    )
    ..registerFactory<CollectionVideosCubit>(
      () => CollectionVideosCubit(
        getVideosUseCase: getIt<GetVideosByCollectionItemFilterUseCase>(),
      ),
    );
}
