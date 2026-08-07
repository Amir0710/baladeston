import 'package:get_it/get_it.dart';
import 'package:baladeston/core/network/client/dio_client.dart';
import 'package:baladeston/core/token/token_storage.dart';
import 'package:baladeston/core/token/auth_token_provider.dart';

final getIt = GetIt.instance;

Future<void> initNetworkModule() async {

  /// Storage
  getIt.registerLazySingleton<TokenStorage>(
        () => const TokenStorage(),
  );

  /// Token Provider
  getIt.registerLazySingleton<AuthTokenProvider>(
        () => AuthTokenProvider(getIt<TokenStorage>()),
  );

  /// Dio Client
  getIt.registerLazySingleton<DioClient>(
        () => DioClient(
      baseUrl: 'https://api.yourdomain.com',
      refreshEndpoint: '/auth/refresh',
      tokenProvider: getIt<AuthTokenProvider>(),
    ),
  );
}
