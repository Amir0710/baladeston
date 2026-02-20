import 'dart:async';

import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';

import 'package:baladeston/domain/watch_history/exception/watch_history_entity_exception.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_id_exception.dart';

import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';

WatchHistoryFailure mapWatchHistoryException(Object error) {
  // HTTP / Resource

  if (error is NotFoundException) {
    return const WatchHistoryNotFoundFailure();
  }

  // Permission

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const WatchHistoryPermissionDeniedFailure();
  }



  // Domain validation - Entity

  if (error is WatchHistoryEntityException) {
    return WatchHistoryValidationFailure(error.toString());
  }

  // Domain validation - Id / Filter

  if (error is WatchHistoryIdException ||
      error is WatchHistoryFilterException) {
    return WatchHistoryValidationFailure(error.toString());
  }

  // Remote validation (API 4xx / 422)

  if (error is RemoteValidationException) {
    return WatchHistoryValidationFailure(error.message);
  }

  // Network / Connectivity

  if (error is NetworkException || error is TimeoutException) {
    return const WatchHistoryNetworkFailure();
  }

  // Server / Backend

  if (error is ServerException) {
    return const WatchHistoryServerFailure();
  }

  // Fallback

  return const WatchHistoryUnknownFailure();
}
