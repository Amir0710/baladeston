import 'package:baladeston/application/providers/category_cubit/category_cubit.dart';
import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api_implementation.dart';
import 'package:baladeston/data/category/repository_implementation/category_repository_implementation.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/add_image/add_image_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/count_all/count_all_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/create_category/create_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_filter/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_id/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_all/get_all_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_filter/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_id/get_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/update/update_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/update_image/update_image_category_usecase.dart';
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
      () => CreateCategoryUseCase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<UpdateCategoryByFilterUseCase>(
      () => UpdateCategoryByFilterUseCase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<CountAllCategoryUseCase>(
      () => CountAllCategoryUseCase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<DeleteCategoryByIdUseCase>(
      () => DeleteCategoryByIdUseCase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<DeleteCategoryByFilterUseCase>(
      () => DeleteCategoryByFilterUseCase(
          repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<GetCategoryByFilterUseCase>(
      () => GetCategoryByFilterUseCase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<GetCategoryByIdUseCase>(
      () => GetCategoryByIdUseCase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<GetAllCategoryUsecase>(
      () => GetAllCategoryUsecase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<UploadCategoryImageUseCase>(
      () => UploadCategoryImageUseCase(repository: getIt<CategoryRepository>()),
    )
    ..registerLazySingleton<UpdateImageCategoryUsecase>(
      () => UpdateImageCategoryUsecase(repository: getIt<CategoryRepository>()),
    )

    // 4. Cubit
    ..registerFactory<CategoryCubit>(
      () => CategoryCubit(
        getAllCategory: getIt<GetAllCategoryUsecase>(),
        createUseCase: getIt<CreateCategoryUseCase>(),
        updateUseCase: getIt<UpdateCategoryByFilterUseCase>(),
        countUseCase: getIt<CountAllCategoryUseCase>(),
        deleteByIdUseCase: getIt<DeleteCategoryByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteCategoryByFilterUseCase>(),
        getByFilterUseCase: getIt<GetCategoryByFilterUseCase>(),
        getByIdUseCase: getIt<GetCategoryByIdUseCase>(),
        addImage: getIt<UploadCategoryImageUseCase>(),
        updateImage: getIt<UpdateImageCategoryUsecase>(),
      ),
    );
}
