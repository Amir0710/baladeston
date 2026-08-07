import 'package:baladeston/application/providers/video_cubit/video_state.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/not_found/video_not_found_failure.dart';
import 'package:baladeston/domain/video/failure/infrastructure/video_infrastructure_failure.dart';

VideoStateError mapVideoFailureToStateError(
  VideoFailure failure,
) {
  if (failure is VideoNetworkFailure) {
    return VideoStateError.network;
  }

  if (failure is VideoTimeoutFailure) {
    return VideoStateError.timeout;
  }

  if (failure is VideoServerFailure) {
    return VideoStateError.server;
  }

  if (failure is BaseVideoAuthFailure) {
    return VideoStateError.permission;
  }

  if (failure is VideoNotFoundFailure) {
    return VideoStateError.notFound;
  }

  if (failure is BaseVideoValidationFailure) {
    return VideoStateError.validation;
  }

  return VideoStateError.unknown;
}
