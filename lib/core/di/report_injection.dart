import 'package:baladeston/presentation/providers/report_cubit/report_cubit.dart';
import 'package:get_it/get_it.dart';

// Data
import 'package:baladeston/data/datasources/remote/report_remote_datasource/report_api.dart';
import 'package:baladeston/data/repository_implementaion/report_repository_implementation.dart';

// Domain
import 'package:baladeston/domain/repositories/report_repository.dart';
import 'package:baladeston/domain/usecase/report/get_report_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/report/get_report_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/report/create_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/update_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/delete_report_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/report/delete_report_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/report/count_all_report_usecase.dart';

// Application

final getIt = GetIt.instance;

Future<void> initReportModule() async {
  getIt

    // Repository
    ..registerLazySingleton<ReportRepository>(
      () => ReportRepositoryImplementation(api: getIt<ReportApi>()),
    )

    // UseCases
    ..registerLazySingleton<GetReportByFilterUseCase>(
      () => GetReportByFilterUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<GetReportByIdUseCase>(
      () => GetReportByIdUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<CreateReportUseCase>(
      () => CreateReportUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<UpdateReportUseCase>(
      () => UpdateReportUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<DeleteReportByIdUseCase>(
      () => DeleteReportByIdUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<DeleteReportByFilterUseCase>(
      () => DeleteReportByFilterUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<CountAllReportUseCase>(
      () => CountAllReportUseCase(getIt<ReportRepository>()),
    )

    // Cubit
    ..registerFactory<ReportCubit>(
      () => ReportCubit(
        countUseCase: getIt<CountAllReportUseCase>(),
        getByFilterUseCase: getIt<GetReportByFilterUseCase>(),
        getByIdUseCase: getIt<GetReportByIdUseCase>(),
        createUseCase: getIt<CreateReportUseCase>(),
        updateUseCase: getIt<UpdateReportUseCase>(),
        deleteByIdUseCase: getIt<DeleteReportByIdUseCase>(),
        deleteByFilterUseCase: getIt<DeleteReportByFilterUseCase>(),
      ),
    );
}
