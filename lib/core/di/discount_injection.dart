import 'package:get_it/get_it.dart';

/* -------------------------------------------------------------------------- */
/*                                 DATA LAYER                                 */
/* -------------------------------------------------------------------------- */
import 'package:baladeston/data/discount/datasource/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/discount/datasource/remote/discount_remote_datasource/discount_api_implementation.dart';
import 'package:baladeston/data/discount/repository_implementation/discount_repository_implementation.dart';

/* -------------------------------------------------------------------------- */
/*                                DOMAIN LAYER                                */
/* -------------------------------------------------------------------------- */
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/create_discount/create_discount_usecase.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_filter/get_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_id/get_discount_by_id_usecase.dart';
import 'package:baladeston/domain/discount/usecase/update_discount_by_id/update_discount_by_id_usecase.dart';
import 'package:baladeston/domain/discount/usecase/update_discount_by_filter/update_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_id/delete_discount_by_id_usecase.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_filter/delete_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/discount/usecase/count_discount/count_discount_usecase.dart';

/* -------------------------------------------------------------------------- */
/*                              PRESENTATION LAYER                             */
/* -------------------------------------------------------------------------- */
import 'package:baladeston/application/providers/discount_cubit/discount_cubit.dart';

final getIt = GetIt.instance;

Future<void> initDiscountModule() async {
  /* -------------------------------------------------------------------------- */
  /*                                   API LAYER                                */
  /* -------------------------------------------------------------------------- */
  getIt
    ..registerLazySingleton<DiscountApi>(
          () => DiscountApiImplementation(),
    )

  /* -------------------------------------------------------------------------- */
  /*                               REPOSITORY LAYER                             */
  /* -------------------------------------------------------------------------- */
    ..registerLazySingleton<DiscountRepository>(
          () => DiscountRepositoryImplementation(
        api: getIt<DiscountApi>(),
      ),
    )

  /* -------------------------------------------------------------------------- */
  /*                                 USE CASES                                  */
  /* -------------------------------------------------------------------------- */
    ..registerLazySingleton<CreateDiscountUseCase>(
          () => CreateDiscountUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

    ..registerLazySingleton<UpdateDiscountByIdUseCase>(
          () => UpdateDiscountByIdUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

    ..registerLazySingleton<UpdateDiscountByFilterUseCase>(
          () => UpdateDiscountByFilterUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

    ..registerLazySingleton<DeleteDiscountByIdUseCase>(
          () => DeleteDiscountByIdUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

    ..registerLazySingleton<DeleteDiscountByFilterUseCase>(
          () => DeleteDiscountByFilterUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

    ..registerLazySingleton<GetDiscountByIdUseCase>(
          () => GetDiscountByIdUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

    ..registerLazySingleton<GetDiscountByFilterUseCase>(
          () => GetDiscountByFilterUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

    ..registerLazySingleton<CountDiscountUseCase>(
          () => CountDiscountUseCase(
        repository: getIt<DiscountRepository>(),
      ),
    )

  /* -------------------------------------------------------------------------- */
  /*                                   CUBIT                                    */
  /* -------------------------------------------------------------------------- */
    ..registerFactory<DiscountCubit>(
          () => DiscountCubit(
        createUseCase: getIt<CreateDiscountUseCase>(),
        updateByIdUseCase: getIt<UpdateDiscountByIdUseCase>(),
        updateByFilterUseCase: getIt<UpdateDiscountByFilterUseCase>(),
        deleteByIdUseCase: getIt<DeleteDiscountByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteDiscountByFilterUseCase>(),
        getByIdUseCase: getIt<GetDiscountByIdUseCase>(),
        getByFilterUseCase: getIt<GetDiscountByFilterUseCase>(),
        countUseCase: getIt<CountDiscountUseCase>(),
      ),
    );
}
