import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_name_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';

ThemeFailure mapThemeException(Object error) {
  // HTTP / Resource & Permission

  if (error is NotFoundException) {
    return const ThemeNotFoundFailure();
  }

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const ThemePermissionDeniedFailure();
  }

  // Domain validation - Entity

  if (error is ThemeEntityException) {
    return ThemeValidationFailure(error.toString());
  }

  // Domain validation - Filter / Id / Name

  if (error is ThemeFilterException ||
      error is ThemeIdException ||
      error is ThemeNameException) {
    return ThemeValidationFailure(error.toString());
  }

  // Remote validation (API 4xx / 422)

  if (error is RemoteValidationException) {
    return ThemeValidationFailure(error.message);
  }

  // Network / Connectivity

  if (error is NetworkException || error is TimeoutException) {
    return const ThemeNetworkFailure();
  }

  // Server / Backend

  if (error is ServerException) {
    return const ThemeServerFailure();
  }

  // Fallback

  return const ThemeUnknownFailure();
}
