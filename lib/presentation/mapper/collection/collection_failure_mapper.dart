import 'package:baladeston/application/providers/collection_cubit/collection_state.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/not_found/collection_not_found_failure.dart';
import 'package:baladeston/domain/collection/failure/infrastructure/collection_infrastructure_failure.dart';


CollectionStateError mapCollectionFailureToStateError(
  CollectionFailure failure,
) {
  if (failure is CollectionNetworkFailure) {
    return CollectionStateError.network;
  }

  if (failure is CollectionTimeoutFailure) {
    return CollectionStateError.timeout;
  }

  if (failure is CollectionServerFailure) {
    return CollectionStateError.server;
  }

    if (failure is BaseCollectionAuthFailure) {
    return CollectionStateError.permission;
  }

  if (failure is CollectionNotFoundFailure) {
    return CollectionStateError.notFound;
  }

  if (failure is BaseCollectionValidationFailure) {
    return CollectionStateError.validation;
  }

  return CollectionStateError.unknown;
}
