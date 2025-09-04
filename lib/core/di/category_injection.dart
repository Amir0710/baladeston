import 'package:baladeston/data/datasources/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/presentation/providers/category_cubit/category_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:baladeston/data/repository_implementaion/category_repository_implementation.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';
import 'package:baladeston/domain/usecase/category/create_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/update_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/count_all_categories_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_id_usecase.dart';


final getIt = GetIt.instance;

Future<void> initCategoryModule() async {
  getIt

    // Repository
    ..registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImplementation(api: getIt<CategoryApi>()),
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
    ..registerLazySingleton<DeleteCategoryByIdUseCase>(
      () => DeleteCategoryByIdUseCase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<DeleteCategoryByFilterUseCase>(
      () => DeleteCategoryByFilterUseCase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<GetCategoryByFilterUseCase>(
      () => GetCategoryByFilterUseCase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<GetCategoryByIdUseCase>(
      () => GetCategoryByIdUseCase(getIt<CategoryRepository>()),
    )

    // Cubit
    ..registerFactory<CategoryCubit>(
      () => CategoryCubit(
        createUseCase: getIt<CreateCategoryUseCase>(),
        updateUseCase: getIt<UpdateCategoryUseCase>(),
        countUseCase: getIt<CountAllCategoriesUseCase>(),
        deleteByIdUseCase: getIt<DeleteCategoryByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteCategoryByFilterUseCase>(),
        getByFilterUseCase: getIt<GetCategoryByFilterUseCase>(),
        getByIdUseCase: getIt<GetCategoryByIdUseCase>(),
      ),
    );
}
