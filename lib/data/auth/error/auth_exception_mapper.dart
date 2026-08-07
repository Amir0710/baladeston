import 'dart:async';
import 'dart:io';

import 'package:baladeston/domain/auth/failure/auth_failure.dart';

AuthFailure mapAuthException(Object error) {

  if (error is SocketException) {
    return const AuthNetworkFailure();
  }

  if (error is TimeoutException) {
    return const AuthTimeoutFailure();
  }

  if (error is HttpException) {
    return const AuthServerFailure();
  }

  if (error is FormatException) {
    return const AuthInvalidDataFailure();
  }

  return const AuthUnknownFailure();
}
