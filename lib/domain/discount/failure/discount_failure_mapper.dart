import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/exception/discount_filter_exception.dart';
import 'package:baladeston/domain/discount/exception/discount_id_exception.dart';

import 'discount_failure.dart';

DiscountFailure mapDiscountException(Object error) {
  if (error is NetworkException || error is TimeoutException) {
    return const DiscountNetworkFailure();
  }

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const DiscountPermissionDeniedFailure();
  }

  if (error is NotFoundException) {
    return const DiscountNotFoundFailure();
  }

  if (error is RemoteValidationException) {
    return DiscountValidationFailure(error.message);
  }

  if (error is DiscountEntityException ||
      error is DiscountFilterException ||
      error is DiscountIdException) {
    return DiscountValidationFailure(error.toString());
  }

  if (error is ServerException) {
    return const DiscountServerFailure();
  }

  return const DiscountUnknownFailure();
}
