import 'package:get_it/get_it.dart';

import 'package:baladeston/application/providers/category_cubit/category_cubit.dart';

import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api_implementation.dart';
import 'package:baladeston/data/category/repository_implementation/category_repository_implementation.dart';

import 'package:baladeston/domain/category/repository/category_repository.dart';

// UseCases
import 'package:baladeston/domain/category/usecase/create_category/create_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/update_by_filter/update_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/update_by_id/update_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_id/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_filter/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_filter/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_id/get_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_all/get_all_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/count_all/count_all_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/upload_category_image/upload_category_image_usecase.dart';

final getIt = GetIt.instance;

Future<void> initCategoryModule() async {
  getIt

  // --------------------------------------------------
  // 1. API
  // --------------------------------------------------
    ..registerLazySingleton<CategoryApi>(
          () => CategoryApiImplementation(),
    )

  // --------------------------------------------------
  // 2. Repository
  // --------------------------------------------------
    ..registerLazySingleton<CategoryRepository>(
          () =>
          CategoryRepositoryImplementation(
            api: getIt<CategoryApi>(),
          ),
    )

  // --------------------------------------------------
  // 3. UseCases
  // --------------------------------------------------
    ..registerLazySingleton<CreateCategoryUseCase>(
          () =>
          CreateCategoryUseCase(
            repository: getIt<CategoryRepository>(),
          ),
    )..registerLazySingleton<UpdateCategoryByFilterUseCase>(
        () =>
        UpdateCategoryByFilterUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<UpdateCategoryByIdUseCase>(
        () =>
        UpdateCategoryByIdUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<DeleteCategoryByIdUseCase>(
        () =>
        DeleteCategoryByIdUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<DeleteCategoryByFilterUseCase>(
        () =>
        DeleteCategoryByFilterUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<GetCategoryByFilterUseCase>(
        () =>
        GetCategoryByFilterUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<GetCategoryByIdUseCase>(
        () =>
        GetCategoryByIdUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<GetAllCategoryUseCase>(
        () =>
        GetAllCategoryUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<CountAllCategoryUseCase>(
        () =>
        CountAllCategoryUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )..registerLazySingleton<UploadCategoryImageUseCase>(
        () =>
        UploadCategoryImageUseCase(
          repository: getIt<CategoryRepository>(),
        ),
  )

  // --------------------------------------------------
  // 4. Cubit
  // --------------------------------------------------
    ..registerFactory<CategoryCubit>(
          () =>
          CategoryCubit(
            getAllCategoryUseCase: getIt<GetAllCategoryUseCase>(),
            createUseCase: getIt<CreateCategoryUseCase>(),
            updateByFilterUseCase: getIt<UpdateCategoryByFilterUseCase>(),
            updateByIdUseCase: getIt<UpdateCategoryByIdUseCase>(),
            countUseCase: getIt<CountAllCategoryUseCase>(),
            deleteByIdUseCase: getIt<DeleteCategoryByIdUseCase>(),
            deleteByFilterUseCase: getIt<DeleteCategoryByFilterUseCase>(),
            getByFilterUseCase: getIt<GetCategoryByFilterUseCase>(),
            getByIdUseCase: getIt<GetCategoryByIdUseCase>(),
            addImageUseCase :getIt<UploadCategoryImageUseCase>(),
          ),
    );
}
