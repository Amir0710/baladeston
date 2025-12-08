import 'package:baladeston/data/datasources/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/datasources/remote/category_remote_datasource/category_api_implementation.dart';
import 'package:baladeston/data/repository_implementation/category_repository_implementation.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';
import 'package:baladeston/domain/usecase/category/add_image_usecase.dart';
import 'package:baladeston/domain/usecase/category/count_all_categories_usecase.dart';
import 'package:baladeston/domain/usecase/category/create_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_all_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/category/update_category_usecase.dart';
import 'package:baladeston/presentation/providers/category_cubit/category_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initCategoryModule() async {
  getIt

  // 1. API
    ..registerLazySingleton<CategoryApi>(() => CategoryApiImplementation())

  // 2. Repository
    ..registerLazySingleton<CategoryRepository>(
          () => CategoryRepositoryImplementation(
        api: getIt<CategoryApi>(),
      ),
    )

  // 3. UseCases
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
    ..registerLazySingleton<GetAllCategoryUsecase>(
          () => GetAllCategoryUsecase(getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<AddImageUseCase>(
          () => AddImageUseCase(getIt<CategoryRepository>()),
    )

  // 4. Cubit
    ..registerFactory<CategoryCubit>(
          () => CategoryCubit(
        getAllCategory: getIt<GetAllCategoryUsecase>(),
        createUseCase: getIt<CreateCategoryUseCase>(),
        updateUseCase: getIt<UpdateCategoryUseCase>(),
        countUseCase: getIt<CountAllCategoriesUseCase>(),
        deleteByIdUseCase: getIt<DeleteCategoryByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteCategoryByFilterUseCase>(),
        getByFilterUseCase: getIt<GetCategoryByFilterUseCase>(),
        getByIdUseCase: getIt<GetCategoryByIdUseCase>(),
        addImage: getIt<AddImageUseCase>(),
      ),
    );
}
