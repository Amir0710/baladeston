import 'package:baladeston/data/repository_implementaion/report_repository_implementation.dart';
import 'package:baladeston/domain/usecase/report/create_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/delete_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/get_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/update_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/count_all_report_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';
import 'package:baladeston/presentation/providers/report_cubit/report_cubit.dart';

final getIt = GetIt.instance;

Future<void> initReportModule() async {
  getIt

    // Repository
    ..registerLazySingleton<ReportRepository>(
      () => ReportRepositoryImplementation(),
    )

    // UseCases
    ..registerLazySingleton<CreateReportUsecase>(
      () => CreateReportUsecase(repository: getIt<ReportRepository>()),
    )
    ..registerLazySingleton<DeleteReportUsecase>(
      () => DeleteReportUsecase(repository: getIt<ReportRepository>()),
    )
    ..registerLazySingleton<GetReportUsecase>(
      () => GetReportUsecase(repository: getIt<ReportRepository>()),
    )
    ..registerLazySingleton<UpdateReportUsecase>(
      () => UpdateReportUsecase(repository: getIt<ReportRepository>()),
    )
    ..registerLazySingleton<CountAllReportUsecase>(
      () => CountAllReportUsecase(repository: getIt<ReportRepository>()),
    )

    // Cubit
    ..registerFactory<ReportCubit>(
      () => ReportCubit(
        createUseCase: getIt<CreateReportUsecase>(),
        deleteUseCase: getIt<DeleteReportUsecase>(),
        getUseCase: getIt<GetReportUsecase>(),
        updateUseCase: getIt<UpdateReportUsecase>(),
        countUseCase: getIt<CountAllReportUsecase>(),
      ),
    );
}
