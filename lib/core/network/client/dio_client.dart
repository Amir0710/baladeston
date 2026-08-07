import 'package:dio/dio.dart';
import 'package:baladeston/core/network/interceptors/auth_interceptor.dart';
import 'package:baladeston/core/network/interceptors/error_interceptor.dart';
import 'package:baladeston/core/token/auth_token_provider.dart';

class DioClient {
  late final Dio dio;

  DioClient({
    required String baseUrl,
    required String refreshEndpoint,
    required AuthTokenProvider tokenProvider,
  }) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {'Accept': 'application/json'},
      ),
    );

    dio.interceptors.addAll([
      AuthInterceptor(tokenProvider),
      ErrorInterceptor(
          dio: dio,
          tokenProvider: tokenProvider,
          refreshEndpoint: refreshEndpoint
      ),
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }
}
