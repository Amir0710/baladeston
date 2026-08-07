import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final FlutterSecureStorage storage;

  const TokenStorage({this.storage = const FlutterSecureStorage()});

  static const _accessKey = 'access_token';
  static const _refreshKey = 'refresh_token';
  static const _onboardingKey = 'onboarding_token';

  Future<void> saveAccessToken(String token) {
    return storage.write(key: _accessKey, value: token);
  }

  Future<void> saveRefreshToken(String token) {
    return storage.write(key: _refreshKey, value: token);
  }

  Future<void> saveOnboardingToken(String token) {
    return storage.write(key: _onboardingKey, value: token);
  }

  Future<String?> getAccessToken() {
    return storage.read(key: _accessKey);
  }

  Future<String?> getRefreshToken() {
    return storage.read(key: _refreshKey);
  }

  Future<String?> getOnboardingToken() {
    return storage.read(key: _onboardingKey);
  }

  Future<void> clearAuth() async {
    await storage.delete(key: _accessKey);
    await storage.delete(key: _refreshKey);
  }

  Future<void> clearAll() {
    return storage.deleteAll();
  }
}
