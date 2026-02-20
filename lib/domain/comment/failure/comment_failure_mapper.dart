import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';

import 'package:baladeston/domain/comment/exception/comment_entity_exception.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';
import 'package:baladeston/domain/comment/exception/comment_id_exception.dart';

import 'comment_failure.dart';

CommentFailure mapCommentException(Object error) {

  if (error is NetworkException || error is TimeoutException) {
    return const CommentNetworkFailure();
  }


  if (error is UnauthorizedException || error is ForbiddenException) {
    return const CommentPermissionDeniedFailure();
  }


  if (error is NotFoundException) {
    return const CommentNotFoundFailure();
  }


  if (error is RemoteValidationException) {
    return CommentValidationFailure(error.message);
  }


  if (error is CommentEntityException ||
      error is CommentFilterException ||
      error is CommentIdException) {
    return CommentValidationFailure(error.toString());
  }


  if (error is ServerException) {
    return const CommentServerFailure();
  }


  return const CommentUnknownFailure();
}
