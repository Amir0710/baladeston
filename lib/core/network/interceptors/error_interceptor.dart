import 'dart:async';
import 'package:baladeston/core/enum/token/auth_token_type.dart';
import 'package:dio/dio.dart';
import 'package:baladeston/core/token/auth_token_provider.dart';

class RefreshTokenException implements Exception {}

class ErrorInterceptor extends Interceptor {
  final Dio dio;
  final AuthTokenProvider tokenProvider;
  final String refreshEndpoint;

  bool _isRefreshing = false;
  final List<Completer<void>> _refreshQueue = [];

  ErrorInterceptor({
    required this.dio,
    required this.tokenProvider,
    required this.refreshEndpoint,
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401 || err.requestOptions.extra['retried'] == true) {
      return handler.next(err);
    }

    try {
      await _refreshToken();

      final newAccessToken = await tokenProvider.accessToken();
      if (newAccessToken == null) throw RefreshTokenException();

      final options = err.requestOptions;
      options.headers['Authorization'] = 'Bearer $newAccessToken';
      options.extra['retried'] = true;

      final response = await dio.fetch(options);
      return handler.resolve(response);
    } catch (e) {
      await tokenProvider.clearSession();
    }
  }

  Future<void> _refreshToken() async {
    if (_isRefreshing) {
      final completer = Completer<void>();
      _refreshQueue.add(completer);
      return completer.future;
    }

    _isRefreshing = true;

    try {
      final refreshToken = await tokenProvider.refreshToken();
      if (refreshToken == null) throw RefreshTokenException();

      final refreshDio = Dio(BaseOptions(baseUrl: dio.options.baseUrl));
      final response = await refreshDio.post(
        refreshEndpoint,
        data: {'refresh_token': refreshToken},
        options: Options(extra: {'tokenType': AuthTokenType.none}),
      );

      final access = response.data['access_token'];
      final refresh = response.data['refresh_token'];

      if (access == null || refresh == null) throw RefreshTokenException();

      await tokenProvider.saveAuthTokens(access: access, refresh: refresh);
      _completeQueue();
    } catch (e) {
      _failQueue(e);
      rethrow;
    } finally {
      _isRefreshing = false;
    }
  }

  void _completeQueue() {
    for (var c in _refreshQueue) { if (!c.isCompleted) c.complete(); }
    _refreshQueue.clear();
  }

  void _failQueue(dynamic e) {
    for (var c in _refreshQueue) { if (!c.isCompleted) c.completeError(e); }
    _refreshQueue.clear();
  }
}
