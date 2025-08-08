import 'package:baladeston/data/repository_implementaion/discount_repository_implementation.dart';
import 'package:get_it/get_it.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';
import 'package:baladeston/domain/usecase/discount/create_discount_usecase.dart';
import 'package:baladeston/domain/usecase/discount/get_discount_usecase_by_filter.dart';
import 'package:baladeston/domain/usecase/discount/edit_discount_usecase.dart';
import 'package:baladeston/presentation/providers/discount_cubit/discount_cubit.dart';

final getIt = GetIt.instance;

/// این تابع را در main یا درون injection.dart اصلی فراخوانی کنید
Future<void> initDiscountModule() async {
  getIt
    // 1- Repository
    ..registerLazySingleton<DiscountRepository>(
      () => DiscountRepositoryImplementation(),
    )

    // 2- UseCases
    ..registerLazySingleton<CreateDiscountUseCase>(
      () => CreateDiscountUseCase(getIt<DiscountRepository>()),
    )
    ..registerLazySingleton<GetDiscountByFilterUseCase>(
      () => GetDiscountByFilterUseCase(getIt<DiscountRepository>()),
    )
    ..registerLazySingleton<EditDiscountUseCase>(
      () => EditDiscountUseCase(getIt<DiscountRepository>()),
    )

    // 3- Cubit
    ..registerFactory<DiscountCubit>(
      () => DiscountCubit(
        createUseCase: getIt<CreateDiscountUseCase>(),
        getUseCase: getIt<GetDiscountByFilterUseCase>(),
        editUseCase: getIt<EditDiscountUseCase>(),
      ),
    );
}
