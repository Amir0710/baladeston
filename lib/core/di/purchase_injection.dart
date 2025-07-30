import 'package:baladeston/data/repository_implementaion/purchase_repository_implementation.dart';
import 'package:baladeston/domain/usecase/pruchase/create_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/edit_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';
import 'package:baladeston/presentation/providers/purchase_cubit/purchase_cubit.dart';

final getIt = GetIt.instance;

/// این تابع را در main یا در injection.dart اصلی صدا بزنید
Future<void> initPurchaseModule() async {
  getIt
    // 1. Repository
    ..registerLazySingleton<PurchaseRepository>(
      () => PurchaseRepositoryImplementation(),
    )
    // 2. UseCases
    ..registerLazySingleton<CreatePurchaseUseCase>(
      () => CreatePurchaseUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<GetPurchaseUseCase>(
      () => GetPurchaseUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<GetPurchaseByIdUseCase>(
      () => GetPurchaseByIdUseCase(getIt<PurchaseRepository>()),
    )
    ..registerLazySingleton<EditPurchaseUseCase>(
      () => EditPurchaseUseCase(getIt<PurchaseRepository>()),
    )
    // 3. Cubit
    ..registerFactory<PurchaseCubit>(
      () => PurchaseCubit(
        createUseCase: getIt<CreatePurchaseUseCase>(),
        getListUseCase: getIt<GetPurchaseUseCase>(),
        getByIdUseCase: getIt<GetPurchaseByIdUseCase>(),
        editUseCase: getIt<EditPurchaseUseCase>(),
      ),
    );
}
