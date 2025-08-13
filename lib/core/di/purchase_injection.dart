import 'package:baladeston/data/datasources/remote/purchase_remote_datasource/purchase_api.dart';
import 'package:baladeston/domain/usecase/pruchase/count_purchase_usacase.dart';
import 'package:baladeston/domain/usecase/pruchase/create_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/delete_purchase_by_id_usacase.dart';
import 'package:baladeston/domain/usecase/pruchase/delete_purchase_usecase_by_filter.dart';
import 'package:baladeston/domain/usecase/pruchase/edit_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_by_id_usacase.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_usecase_by_filter.dart';
import 'package:get_it/get_it.dart';

// Repository & Implementation
import 'package:baladeston/domain/repositories/purchase_repository.dart';
import 'package:baladeston/data/repository_implementaion/purchase_repository_implementation.dart';

// Cubit
import 'package:baladeston/presentation/providers/purchase_cubit/purchase_cubit.dart';

final getIt = GetIt.instance;

/// ثبت وابستگی‌های Purchase
Future<void> initPurchaseModule() async {
  getIt
    // 1. Repository
    ..registerLazySingleton<PurchaseRepository>(
      () => PurchaseRepositoryImplementation(api: getIt<PurchaseApi>()),
    )

    // 2. UseCases
    ..registerLazySingleton<CreatePurchaseUseCase>(
      () => CreatePurchaseUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<EditPurchaseUseCase>(
      () => EditPurchaseUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<GetPurchaseByIdUseCase>(
      () => GetPurchaseByIdUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<GetPurchaseByFilterUseCase>(
      () => GetPurchaseByFilterUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<DeletePurchaseByIdUseCase>(
      () => DeletePurchaseByIdUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<DeletePurchaseByFilterUseCase>(
      () => DeletePurchaseByFilterUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<CountPurchaseUseCase>(
      () => CountPurchaseUseCase(getIt<PurchaseRepository>()),
    )

    // 3. Cubit
    ..registerFactory<PurchaseCubit>(
      () => PurchaseCubit(
        createUseCase: getIt<CreatePurchaseUseCase>(),
        editUseCase: getIt<EditPurchaseUseCase>(),
        getByIdUseCase: getIt<GetPurchaseByIdUseCase>(),
        getByFilterUseCase: getIt<GetPurchaseByFilterUseCase>(),
        deleteByIdUseCase: getIt<DeletePurchaseByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeletePurchaseByFilterUseCase>(),
        countUseCase: getIt<CountPurchaseUseCase>(),
      ),
    );
}
