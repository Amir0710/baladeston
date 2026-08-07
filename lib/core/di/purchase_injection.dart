import 'package:baladeston/application/providers/purchase_cubit/purchase_cubit.dart';
// Datasource
import 'package:baladeston/data/purchase/datasource/remote/purchase_remote_datasource/purchase_api.dart';
import 'package:baladeston/data/purchase/repository_implementation/purchase_repository_implementation.dart';
// Repository
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'package:baladeston/domain/purchase/usecase/count_purchase/count_purchase_usecase.dart';
// UseCases
import 'package:baladeston/domain/purchase/usecase/create_purchase/create_purchase_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/delete_purchase_by_filter/delete_purchase_by_filter_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/delete_purchase_by_id/delete_purchase_by_id_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/get_purchase_by_filter/get_purchase_by_filter_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/get_purchase_by_id/get_purchase_by_id_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/update_purchase_by_filter/update_purchase_by_filter_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/update_purchase_by_id/update_purchase_by_id_usecase.dart';
// Cubit
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initPurchaseModule() async {
  /* -------------------------------------------------------------------------- */
  /*                                Repository                                  */
  /* -------------------------------------------------------------------------- */

  getIt.registerLazySingleton<PurchaseRepository>(
    () => PurchaseRepositoryImplementation(
      api: getIt<PurchaseApi>(),
    ),
  );

  /* -------------------------------------------------------------------------- */
  /*                                 UseCases                                   */
  /* -------------------------------------------------------------------------- */

  getIt
    ..registerLazySingleton<CreatePurchaseUseCase>(
      () => CreatePurchaseUseCase(repository: getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<UpdatePurchaseByIdUseCase>(
      () => UpdatePurchaseByIdUseCase(repository: getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<UpdatePurchaseByFilterUseCase>(
      () => UpdatePurchaseByFilterUseCase(repository: getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<GetPurchaseByIdUseCase>(
      () => GetPurchaseByIdUseCase(repository: getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<GetPurchaseByFilterUseCase>(
      () => GetPurchaseByFilterUseCase(repository: getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<DeletePurchaseByIdUseCase>(
      () => DeletePurchaseByIdUseCase(repository: getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<DeletePurchaseByFilterUseCase>(
      () => DeletePurchaseByFilterUseCase(repository: getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<CountPurchaseUseCase>(
      () => CountPurchaseUseCase(repository: getIt<PurchaseRepository>()),
    );

  /* -------------------------------------------------------------------------- */
  /*                                   Cubit                                    */
  /* -------------------------------------------------------------------------- */

  getIt.registerFactory<PurchaseCubit>(
    () => PurchaseCubit(
      createUseCase: getIt<CreatePurchaseUseCase>(),
      updateByIdUseCase: getIt<UpdatePurchaseByIdUseCase>(),
      updateByFilterUseCase: getIt<UpdatePurchaseByFilterUseCase>(),
      getByIdUseCase: getIt<GetPurchaseByIdUseCase>(),
      getByFilterUseCase: getIt<GetPurchaseByFilterUseCase>(),
      deleteByIdUseCase: getIt<DeletePurchaseByIdUseCase>(),
      deleteByFilterUseCase: getIt<DeletePurchaseByFilterUseCase>(),
      countUseCase: getIt<CountPurchaseUseCase>(),
    ),
  );
}
