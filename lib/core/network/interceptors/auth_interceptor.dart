import 'package:dio/dio.dart';
import 'package:baladeston/core/token/auth_token_provider.dart';

/// تعریف نوع توکن به صورت ثابت برای جلوگیری از Error های تایپی
class AuthTokenType {
  static const String access = 'access';
  static const String onboarding = 'onboarding';
  static const String none = 'none';
}

class AuthInterceptor extends Interceptor {
  final AuthTokenProvider tokenProvider;

  AuthInterceptor(this.tokenProvider);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final tokenType = options.extra['tokenType'] ?? AuthTokenType.access;

    if (tokenType == AuthTokenType.none) {
      return handler.next(options);
    }

    String? token;
    if (tokenType == AuthTokenType.onboarding) {
      token = await tokenProvider.onboardingToken();
    } else {
      token = await tokenProvider.accessToken();
    }

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }
}
