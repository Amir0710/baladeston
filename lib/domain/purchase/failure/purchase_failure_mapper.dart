import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/domain/purchase/exception/purchase_entity_exception.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';
import 'package:baladeston/domain/purchase/exception/purchase_id_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';

PurchaseFailure mapPurchaseException(Object error) {
  // HTTP / Resource & Permission

  if (error is NotFoundException) {
    return const PurchaseNotFoundFailure();
  }

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const PurchasePermissionDeniedFailure();
  }

  // Domain business rules - Entity

  if (error is PurchaseEntityInvalidStateException) {
    return PurchaseInvalidStateFailure(error.toString());
  }

  if (error is PurchaseEntityException) {
    return PurchaseValidationFailure(error.toString());
  }

  // Domain validation - Filter / Id

  if (error is PurchaseFilterException || error is PurchaseIdException) {
    return PurchaseValidationFailure(error.toString());
  }

  // Remote validation (API 4xx / 422)

  if (error is RemoteValidationException) {
    return PurchaseValidationFailure(error.message);
  }

  // Network / Connectivity

  if (error is NetworkException || error is TimeoutException) {
    return const PurchaseNetworkFailure();
  }

  // Server / Backend

  if (error is ServerException) {
    return const PurchaseServerFailure();
  }

  // Fallback

  return const PurchaseUnknownFailure();
}
