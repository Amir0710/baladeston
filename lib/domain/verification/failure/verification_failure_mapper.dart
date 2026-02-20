
import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';

import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';

VerificationFailure mapVerificationException(Object error) {
  // Domain validation (entity / business rules)

  if (error is VerificationEntityException) {
    return ValidationFailure(error.message);
  }

  // Remote validation (API 4xx / 422)

  if (error is RemoteValidationException) {
    return ValidationFailure(error.message);
  }

  // Resource / user data

  if (error is NotFoundException) {
    return const UserDataInvalidFailure();
  }

  // Permission

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const ValidationFailure('دسترسی غیرمجاز است.');
  }

  // Network / Connectivity

  if (error is NetworkException || error is TimeoutException) {
    return const NetworkFailure();
  }

  // Server / Backend

  if (error is ServerException) {
    return const UnknownFailure('خطای سرور رخ داده است.');
  }

  // Fallback

  return const UnknownFailure();
}
