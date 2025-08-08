import 'package:get_it/get_it.dart';

import 'package:baladeston/data/repository_implementaion/category_repository_implementation.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

import 'package:baladeston/domain/usecase/category/create_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/update_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/count_all_categories_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_filter_usecase.dart';

import 'package:baladeston/presentation/providers/category_cubit/category_cubit.dart';

final getIt = GetIt.instance;

/// ثبت وابستگی‌های ماژول دسته‌بندی (Category)
Future<void> initCategoryModule() async {
  getIt

    // Repository
    ..registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImplementation(),
    )

    // UseCases
    ..registerLazySingleton<CreateCategoryUseCase>(
      () => CreateCategoryUseCase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<UpdateCategoryUseCase>(
      () => UpdateCategoryUseCase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<CountAllCategoriesUseCase>(
      () => CountAllCategoriesUseCase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<DeleteCategoryUseCase>(
      () => DeleteCategoryUseCase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<GetCategoryByFilterUseCase>(
      () => GetCategoryByFilterUseCase(getIt<CategoryRepository>()),
    )

    // Cubit
    ..registerFactory<CategoryCubit>(
      () => CategoryCubit(
        createUseCase: getIt<CreateCategoryUseCase>(),
        updateUseCase: getIt<UpdateCategoryUseCase>(),
        countUseCase: getIt<CountAllCategoriesUseCase>(),
        deleteUseCase: getIt<DeleteCategoryUseCase>(),
        getByFilterUseCase: getIt<GetCategoryByFilterUseCase>(),
        getBUseCase: getIt<GetCategoryByFilterUseCase>(),
      ),
    );
}
