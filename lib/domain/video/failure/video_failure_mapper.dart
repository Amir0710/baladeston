
import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';

import 'package:baladeston/domain/video/exception/video_entity_exception.dart';
import 'package:baladeston/domain/video/exception/video_file_exception.dart';
import 'package:baladeston/domain/video/exception/video_file_url_exception.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';
import 'package:baladeston/domain/video/exception/video_id_exception.dart';
import 'package:baladeston/domain/video/exception/video_image_exception.dart';
import 'package:baladeston/domain/video/exception/video_image_url_exception.dart';

import 'package:baladeston/domain/video/failure/video_failure.dart';

VideoFailure mapVideoException(Object error) {
  // HTTP / Resource

  if (error is NotFoundException) {
    return const VideoNotFoundFailure();
  }

  // Permission

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const VideoPermissionDeniedFailure();
  }

  // Domain validation - Entity

  if (error is VideoEntityException) {
    return VideoValidationFailure(error.toString());
  }

  // Domain validation - Id / Filter / URLs

  if (error is VideoIdException ||
      error is VideoFilterException ||
      error is VideoFileUrlException ||
      error is VideoImageUrlException) {
    return VideoValidationFailure(error.toString());
  }

  // Video file upload (binary)

  if (error is VideoFileFormatException) {
    return const VideoFormatNotSupportedFailure();
  }

  if (error is VideoFileException) {
    return VideoUploadFailedFailure(error.toString());
  }

  // Video image upload

  if (error is VideoImageFormatException) {
    return const VideoFormatNotSupportedFailure();
  }

  if (error is VideoImageException) {
    return VideoUploadFailedFailure(error.toString());
  }

  // Remote validation (API 4xx / 422)

  if (error is RemoteValidationException) {
    return VideoValidationFailure(error.message);
  }

  // Network / Connectivity

  if (error is NetworkException || error is TimeoutException) {
    return const VideoNetworkFailure();
  }

  // Server / Backend

  if (error is ServerException) {
    return const VideoServerFailure();
  }

  // Fallback

  return const VideoUnknownFailure();
}
