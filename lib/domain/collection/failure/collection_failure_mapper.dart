import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/domain/collection/exception/collection_entity_exception.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/exception/collection_id_exception.dart';
import 'package:baladeston/domain/collection/exception/collection_image_file_exception.dart';
import 'package:baladeston/domain/collection/exception/collection_image_url_exception.dart';

import 'collection_failure.dart';

CollectionFailure mapCollectionException(Object error) {
  if (error is NetworkException || error is TimeoutException) {
    return const CollectionNetworkFailure();
  }
  if (error is UnauthorizedException || error is ForbiddenException) {
    return const CollectionPermissionDeniedFailure();
  }
  if (error is NotFoundException) {
    return const CollectionNotFoundFailure();
  }
  if (error is RemoteValidationException) {
    return CollectionValidationFailure(error.message);
  }
  if (error is CollectionEntityException ||
      error is CollectionFilterException ||
      error is CollectionIdException ||
      error is CollectionImageFileException ||
      error is CollectionImageUrlException) {
    return CollectionValidationFailure(error.toString());
  }
  if (error is ServerException) {
    return const CollectionServerFailure();
  }
  return const CollectionUnknownFailure();
}
