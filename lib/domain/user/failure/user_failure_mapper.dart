import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/domain/user/exception/user_entity_exception.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';
import 'package:baladeston/domain/user/exception/user_id_exception.dart';
import 'package:baladeston/domain/user/exception/user_image_url_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';

UserFailure mapUserException(Object error) {
  // HTTP / Resource & Permission

  if (error is NotFoundException) {
    return const UserNotFoundFailure();
  }

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const UserPermissionDeniedFailure();
  }

  // Domain validation - Entity

  if (error is UserEntityException) {
    return UserValidationFailure(error.toString());
  }

  // Domain validation - Filter / Id / Avatar URL

  if (error is UserFilterException ||
      error is UserIdException ||
      error is UserAvatarUrlException) {
    return UserValidationFailure(error.toString());
  }

  // Remote validation (API 4xx / 422)

  if (error is RemoteValidationException) {
    return UserValidationFailure(error.message);
  }

  // Network / Connectivity

  if (error is NetworkException || error is TimeoutException) {
    return const UserNetworkFailure();
  }

  // Server / Backend

  if (error is ServerException) {
    return const UserServerFailure();
  }

  // Fallback

  return const UserUnknownFailure();
}
