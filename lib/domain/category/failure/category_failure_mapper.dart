import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';

import '../exception/category_entity_exception.dart';
import '../exception/category_filter_exception.dart';
import '../exception/category_id_exception.dart';
import '../exception/category_image_exception.dart';
import '../failure/category_failure.dart';

CategoryFailure mapCategoryException(Object error) {
  if (error is NetworkException || error is TimeoutException) {
    return const NetworkFailure();
  }
  if (error is UnauthorizedException || error is ForbiddenException) {
    return const PermissionDeniedFailure();
  }
  if (error is NotFoundException) {
    return const CategoryNotFoundFailure();
  }
  if (error is RemoteValidationException) {
    return ValidationFailure(error.message);
  }
  if (error is CategoryEntityException ||
      error is CategoryFilterException ||
      error is CategoryIdException ||
      error is CategoryImageException) {
    return ValidationFailure(error.toString());
  }
  if (error is ServerException) {
    return const ServerFailure();
  }
  return const UnknownFailure();
}
