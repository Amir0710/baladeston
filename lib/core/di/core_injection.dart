import 'package:baladeston/core/token/auth_token_provider.dart';
import 'package:baladeston/core/token/authorized_http_client.dart';
import 'package:baladeston/core/token/token_storage.dart';
import 'package:get_it/get_it.dart';

Future<void> initCoreModule() async {
  final GetIt getIt = GetIt.instance;

  getIt.registerLazySingleton<TokenStorage>(
    () => const TokenStorage(),
  );

  getIt.registerLazySingleton<AuthTokenProvider>(
    () => AuthTokenProvider(getIt()),
  );

  getIt.registerLazySingleton<AuthorizedHttpClient>(
    () => AuthorizedHttpClient(getIt()),
  );
}
