import 'package:baladeston/application/providers/report_cubit/report_cubit.dart';
// Data
import 'package:baladeston/data/report/datasource/remote/report_remote_datasource/report_api.dart';
import 'package:baladeston/data/report/repository_implementation/report_repository_implementation.dart';
// Domain - Repository
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'package:baladeston/domain/report/usecase/count_report/count_report_usecase.dart';
import 'package:baladeston/domain/report/usecase/create_report/create_report_usecase.dart';
import 'package:baladeston/domain/report/usecase/delete_report_by_filter/delete_report_by_filter_usecase.dart';
import 'package:baladeston/domain/report/usecase/delete_report_by_id/delete_report_by_id_usecase.dart';
// Domain - UseCases
import 'package:baladeston/domain/report/usecase/get_report_by_filter/get_report_by_filter_usecase.dart';
import 'package:baladeston/domain/report/usecase/get_report_by_id/get_report_by_id_usecase.dart';
import 'package:baladeston/domain/report/usecase/update_report_by_filter/update_report_by_filter_usecase.dart';
import 'package:baladeston/domain/report/usecase/update_report_by_id/update_report_by_id_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initReportModule() async {
  /* -------------------------------------------------------------------------- */
  /*                                Repository                                  */
  /* -------------------------------------------------------------------------- */

  getIt.registerLazySingleton<ReportRepository>(
    () => ReportRepositoryImplementation(
      api: getIt<ReportApi>(),
    ),
  );

  /* -------------------------------------------------------------------------- */
  /*                                 UseCases                                   */
  /* -------------------------------------------------------------------------- */

  getIt
    ..registerLazySingleton<GetReportByFilterUseCase>(
      () => GetReportByFilterUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<GetReportByIdUseCase>(
      () => GetReportByIdUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<CreateReportUseCase>(
      () => CreateReportUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<UpdateReportByIdUseCase>(
      () => UpdateReportByIdUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<UpdateReportByFilterUseCase>(
      () => UpdateReportByFilterUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<DeleteReportByIdUseCase>(
      () => DeleteReportByIdUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<DeleteReportByFilterUseCase>(
      () => DeleteReportByFilterUseCase(getIt<ReportRepository>()),
    )
    ..registerLazySingleton<CountReportUseCase>(
      () => CountReportUseCase(getIt<ReportRepository>()),
    );

  /* -------------------------------------------------------------------------- */
  /*                                   Cubit                                    */
  /* -------------------------------------------------------------------------- */

  getIt.registerFactory<ReportCubit>(
    () => ReportCubit(
      countUseCase: getIt<CountReportUseCase>(),
      getByFilterUseCase: getIt<GetReportByFilterUseCase>(),
      getByIdUseCase: getIt<GetReportByIdUseCase>(),
      createUseCase: getIt<CreateReportUseCase>(),
      updateByIdUseCase: getIt<UpdateReportByIdUseCase>(),
      updateByFilterUseCase: getIt<UpdateReportByFilterUseCase>(),
      deleteByIdUseCase: getIt<DeleteReportByIdUseCase>(),
      deleteByFilterUseCase: getIt<DeleteReportByFilterUseCase>(),
    ),
  );
}
