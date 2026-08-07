
import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/client/app_http_client_implementation.dart';
import 'package:baladeston/core/network/client/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initCoreModule() async {
  getIt
    ..registerLazySingleton<Dio>(
          () => DioClient(
        baseUrl: AppConfig.apiBaseUrl,
        refreshEndpoint: '/auth/refresh',
        tokenProvider: getIt(),
      ).dio,
    )
    ..registerLazySingleton<AppHttpClient>(
          () => AppHttpClientImpl(getIt<Dio>()),
    );
}
