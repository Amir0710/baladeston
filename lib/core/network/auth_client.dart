import 'package:baladeston/core/storage.dart';
import 'package:http/http.dart' as http; // دقت کن این لازمه!


class AuthClient extends http.BaseClient {
  final http.Client _inner;
  final TokenStorage _tokenStorage;

  AuthClient(this._inner, this._tokenStorage);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final token = await _tokenStorage.getToken();
    if (token != null) {
      request.headers['Authorization'] = 'Bearer $token';
    }
    return _inner.send(request);
  }
}
