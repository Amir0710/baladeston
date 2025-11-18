import 'package:baladeston/core/storage.dart';
import 'package:http/http.dart' as http;

class AuthClient extends http.BaseClient {
  final http.Client _inner;
  final TokenStorage tokenStorage;

  AuthClient({
    http.Client? inner,
    required this.tokenStorage,
  }) : _inner = inner ?? http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final token = await tokenStorage.getToken();
    if (token != null && token.isNotEmpty) {
      request.headers['Authorization'] = 'Bearer $token';
    }
    return _inner.send(request);
  }
}
