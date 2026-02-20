import 'package:baladeston/data/discount/datasource/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/discount/repository_implementation/discount_repository_implementation.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/count_discount/count_discount_usecase.dart';
import 'package:baladeston/domain/discount/usecase/create_discount/create_discount_usecase.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_filter/delete_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/discount/delete_discount_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/discount/edit_discount_usecase.dart';
import 'package:baladeston/domain/usecase/discount/get_discount_usecase_by_filter.dart';
import 'package:baladeston/domain/discount/get_discount_usecase_by_id.dart';
import 'package:baladeston/application/providers/discount_cubit/discount_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initDiscountModule() async {
  getIt
    // Repository
    ..registerLazySingleton<DiscountRepository>(
      () => DiscountRepositoryImplementation(api: getIt<DiscountApi>()),
    )

    // UseCases
    ..registerLazySingleton<CreateDiscountUseCase>(
      () => CreateDiscountUseCase(getIt<DiscountRepository>()),
    )
    ..registerLazySingleton<GetDiscountByFilterUseCase>(
      () => GetDiscountByFilterUseCase(getIt<DiscountRepository>()),
    )
    ..registerLazySingleton<EditDiscountUseCase>(
      () => EditDiscountUseCase(getIt<DiscountRepository>()),
    )

    // Cubit
    ..registerFactory<DiscountCubit>(
      () => DiscountCubit(
        createUseCase: getIt<CreateDiscountUseCase>(),
        editUseCase: getIt<EditDiscountUseCase>(),
        getByFilterUseCase: getIt<GetDiscountByFilterUseCase>(),
        getByIdUseCase:  getIt<GetDiscountByIdUseCase>(),
        deleteByIdUseCase: getIt<DeleteDiscountByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteDiscountByFilterUseCase>(),
        countUseCase: getIt<CountDiscountUseCase>(),
      ),
    );
}
