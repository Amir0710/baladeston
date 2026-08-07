import 'dart:convert';
import 'dart:io';

import 'auth_token_provider.dart';

class AuthorizedHttpClient {
  final HttpClient _client = HttpClient();
  final AuthTokenProvider tokenProvider;

  AuthorizedHttpClient(this.tokenProvider);

  Future<dynamic> get(Uri uri) async {
    final req = await _client.getUrl(uri);
    await _addHeaders(req);
    return _send(req);
  }

  Future<dynamic> post(Uri uri, {Object? body}) async {
    final req = await _client.postUrl(uri);
    await _addHeaders(req);

    if (body != null) {
      req.write(jsonEncode(body));
    }

    return _send(req);
  }

  Future<dynamic> put(Uri uri, {Object? body}) async {
    final req = await _client.putUrl(uri);
    await _addHeaders(req);

    if (body != null) {
      req.write(jsonEncode(body));
    }

    return _send(req);
  }

  Future<dynamic> delete(Uri uri) async {
    final req = await _client.deleteUrl(uri);
    await _addHeaders(req);
    return _send(req);
  }

  Future<void> _addHeaders(HttpClientRequest req) async {
    final accessToken = await tokenProvider.accessToken();
    final onboardingToken = await tokenProvider.onboardingToken();

    req.headers.set(HttpHeaders.contentTypeHeader, 'application/json');

    if (accessToken != null) {
      req.headers.set(
        HttpHeaders.authorizationHeader,
        'Bearer $accessToken',
      );
    }

    if (onboardingToken != null) {
      req.headers.set('Onboarding-Token', onboardingToken);
    }
  }

  Future<dynamic> _send(HttpClientRequest req) async {
    final res = await req.close();

    final body = await res.transform(utf8.decoder).join();

    final decoded = body.isNotEmpty ? jsonDecode(body) : null;

    if (res.statusCode >= 200 && res.statusCode < 300) {
      return decoded;
    }

    throw HttpException(
      'Request failed: ${res.statusCode}',
      uri: req.uri,
    );
  }
}
