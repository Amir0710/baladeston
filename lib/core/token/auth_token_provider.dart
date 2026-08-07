import 'package:baladeston/core/token/token_storage.dart';

class AuthTokenProvider {
  final TokenStorage storage;

  AuthTokenProvider(this.storage);

  Future<String?> accessToken() {
    return storage.getAccessToken();
  }

  Future<String?> refreshToken() {
    return storage.getRefreshToken();
  }

  Future<String?> onboardingToken() {
    return storage.getOnboardingToken();
  }

  Future<Map<String, String>> authHeader() async {
    final token = await accessToken();

    if (token == null) return {};

    return {
      'Authorization': 'Bearer $token',
    };
  }

  Future<void> saveAuthTokens({
    required String access,
    required String refresh,
  }) async {
    await storage.saveAccessToken(access);
    await storage.saveRefreshToken(refresh);
  }

  Future<void> clearSession() {
    return storage.clearAuth();
  }
}
