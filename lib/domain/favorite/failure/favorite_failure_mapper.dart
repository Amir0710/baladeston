import 'dart:async';

import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';

import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/exception/favorite_filter_exception.dart';
import 'package:baladeston/domain/favorite/exception/favorite_id_exception.dart';

import 'package:baladeston/domain/favorite/failure/favorite_failure.dart';

FavoriteFailure mapFavoriteException(Object error) {
  // ======================================================
  // HTTP / Permission
  // ======================================================

  if (error is NotFoundException) {
    return const FavoriteNotFoundFailure();
  }

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const FavoritePermissionDeniedFailure();
  }

  if (error is ServerException) {
    return const FavoriteServerFailure();
  }

  // ======================================================
  // Domain validation (Entity / Filter / Id)
  // ======================================================

  if (error is FavoriteEntityException ||
      error is FavoriteFilterException ||
      error is FavoriteIdException) {
    return FavoriteValidationFailure(error.toString());
  }

  // ======================================================
  // Remote validation
  // ======================================================

  if (error is RemoteValidationException) {
    return FavoriteValidationFailure(error.message);
  }

  // ======================================================
  // Network / Connectivity
  // ======================================================

  if (error is NetworkException || error is TimeoutException) {
    return const FavoriteNetworkFailure();
  }

  // ======================================================
  // Fallback
  // ======================================================

  return const FavoriteUnknownFailure();
}
