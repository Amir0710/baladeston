import 'dart:async';
import 'dart:io';

import 'package:baladeston/domain/verification/failure/verification_failure.dart';

VerificationFailure mapVerificationException(Object error) {
  if (error is SocketException) {
    return const VerificationNetworkFailure();
  }

  if (error is TimeoutException) {
    return const VerificationTimeoutFailure();
  }

  if (error is HttpException) {
    return const VerificationServerFailure();
  }

  if (error is FormatException) {
    return const VerificationInvalidDataFailure();
  }

  return const VerificationUnknownFailure();
}
